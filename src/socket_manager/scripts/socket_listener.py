#!/usr/bin/env python
from operator import itemgetter

import rospy
from geometry_msgs.msg import Point


class SocketListener:
    const_dist = 0.2

    def __init__(self):
        self.sockets = []

    def log_sockets(self, msg):
        if not self.sockets:
            self.sockets.append(Point(msg.x, msg.y, 0))
        socket_dist = [((socket.x - msg.x)**2 + (socket.y - msg.y)**2)**0.5 for socket in self.sockets]
        closest, dist = min(zip(self.sockets, socket_dist), key=itemgetter(1))
        if dist < const_dist:
            mul = -(1/const_dist) * dist + 1
            inv = 2 - mul
            x, y = inv*closest.x + mul*msg.x, inv*closest.y + mul*msg.y
            new_socket = Point(x, y, 0)
            self.sockets.remove(closest)
            self.sockets.append(new_socket)
        else:
            self.sockets.append(Point(msg.x, msg.y, 0))


def main():
    rospy.init_node("socket_listener")
    listener = SocketListener()
    rospy.Subscribe("sockets", Point, listener.log_sockets)
    rospy.spin()


if __name__ == '__main__':
    main()
