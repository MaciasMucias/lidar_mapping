import time
import serial


'''
    Protocol:
        establishing connection: hi
        requesting distance:
            (protocol for master)
            await receiving dis (using check_request); send distance using request (pass distance in mm as string)
            received data from a request will be a list of 3d tuples (x, y, z) encoded using json.dumps,
            each of them describing the position of one socket relative to the center of robot
            read this string using json.loads
'''


class Communication:

    def __init__(self, serial_port, master=False, ending='\r'):
        self.master = master
        self.connection_established = False
        self.ending = ending
        if master:
            print("Initializing master device...")
        else:
            print("Initializing slave device...")

        # initialize serial port
        self.serial_port = None
        while self.serial_port is None:  # repeat until serial is successfully initialized
            try:
                self.serial_port = serial.Serial(
                    port=serial_port,
                    baudrate=115200,
                    bytesize=serial.EIGHTBITS,
                    parity=serial.PARITY_NONE,
                    stopbits=serial.STOPBITS_ONE
                )
            except serial.serialutil.SerialException:
                print("Initialization failed! Resending request...")
                time.sleep(1)
        print('Initialization successful!')
        # wait a bit to initialize
        time.sleep(1)

        # establish connection
        print('Establishing connection...')
        self.establish_connection(master)
        print('Connection established!')

    # read data from serial
    def read_data(self):
        data_stream_ending = self.ending.encode()
        data = self.serial_port.read_until(data_stream_ending)[:-1]  # remove last character (ending)
        return data.decode()

    # write data to serial
    def write_data(self, data):
        data_stream = data + self.ending
        self.serial_port.write(data_stream.encode())

    # send data request
    def request(self, req, delay=0.2):  # delay in seconds between repeating requests
        self.write_data(req)
        time_elapsed = time.time()  # time of last request
        while True:
            data = self.check_request()
            if data:
                return data

            if time.time() - time_elapsed >= delay:
                # repeat request
                self.write_data(req)

    # if data_available
    def check_request(self):
        if self.serial_port.inWaiting() > 0:
            return self.read_data()
        return None

    # shaking hand
    def establish_connection(self, master=False, delay=1):  # delay in seconds between next messages

        if master:  # try to initialize connection if master
            self.write_data('hi')

        request_time = time.time()
        while True:  # try until successful
            data = self.check_request()
            if data:  # if there is data on the serial
                if data == 'hi':
                    self.connection_established = True
                    if not master:
                        # sending confirmation
                        self.write_data('hi')
                    break
                else:  # if different message was received
                    print('Data received. Connection not established!')

            # if it is time to send next request (as master)
            if time.time() - request_time >= delay and master:
                print('Repeating request...')
                self.write_data('hi')
                request_time = time.time()


if __name__ == '__main__':
    com = Communication("/dev/ttyTHS1")
