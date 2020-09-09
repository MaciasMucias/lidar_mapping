#!/usr/bin/env python

import json
from serial_communication import Communication

import rospy
from tf import TransformListener
from socket_manager.srv import GetDistanceFromWall
from geometry_msgs.msg import Point


def socket_distance_client():
    try:
        service = rospy.ServiceProxy('socket_distance', GetDistanceFromWall)
        resp = service()
        return resp.isValid, resp.distance, resp.angle
    except KeyboardInterrupt:
        raise RuntimeError
    except rospy.ServiceException as e:
        rospy.WARN("Service call failed: %s" % e)


def main():
    rospy.init_node("socket_communicator")
    pub = rospy.Publisher("sockets", Point, queue_size=10)
    t = TransformListener()
    rospy.wait_for_service('socket_distance')
    com = Communication('/dev/ttyUSB0', master=True)
    while True:
        data = com.check_request()
        if data == 'dis':
            req_data = socket_distance_client()
            print(req_data)
            req = json.dumps(req_data)
            response = com.request(req)  # send distance as string and wait for the socket coordinates
            # receive list of tuples describing position of sockets (x, y, z) relative to the center of robot
            print(response)
            sockets = json.loads(response)
            if not sockets:
                continue

            if t.frameExists("base_link") and t.frameExists("arm_cam"):
                tf_t = t.getLatestCommonTime("base_link", "arm_cam")
                position, quaternion = t.lookupTransform("arm_cam", "base_link", tf_t)
                for s_x, s_y, s_z in sockets:
                    x = position[0] + s_x/1000
                    y = position[1] + s_y/1000
                    z = position[2] + s_z/1000
                    pub.publish(Point(x, y, z))


if __name__ == '__main__':
    main()
