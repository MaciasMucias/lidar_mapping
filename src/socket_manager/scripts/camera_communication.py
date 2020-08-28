
import json
from serial_communication import Communication

import rospy
from socket_manager.srv import GetDistanceFromWall
from geometry_msgs.msg import Point

def socket_distance_client():
    try:
        service = rospy.ServiceProxy('socket_distance', GetDistanceFromWall)
        resp = service()
        return (resp.distance, resp.angle)
    except rospy.ServiceException as e:
        rospy.WARN("Service call failed: %s"%e)

def main():
    rospy.init("socket_communicator")
    pub = rospy.Publisher("sockets", Point, queue_size=10)
    rospy.wait_for_service('socket_distance')
    com = Communication('COM15', master=True)
    while True:
        data = com.check_request()
            if data == 'dis':
                req_data = socket_distance_client()
                req = json.dump(req_data)
                response = com.request(req)  # send distance as string and wait for the socket coordinates
                # receive list of tuples describing position of sockets (x, y, z) relative to the center of robot
                sockets = json.loads(response)

                if self.tf.frameExists("/base_link") and self.tf.frameExists("/arm_cam"):
                    t = self.tf.getLatestCommonTime("/base_link", "/arm_cam")
                    position, quaternion = self.tf.lookupTransform("/arm_cam", "/base_link", t)
                    for s_x, s_y, s_z in sockets:
                        x = position.x + s_x
                        y = position.y + s_y
                        z = position.z + s_z
                        pub.publish(Point(x, y, z))


if __name__ == '__main__':
    main()
 