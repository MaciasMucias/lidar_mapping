#!/usr/bin/env python

import rospy 
from laser_assembler.srv import AssembleScans2
from sensor_msgs.msg import PointCloud2


def main():
    rospy.init_node("assemble_scans_to_cloud")
    rospy.wait_for_service("assemble_scans2")
    assemble_scans = rospy.ServiceProxy('assemble_scans2', AssembleScans2)
    pub = rospy.Publisher ("/filtered_cloud", PointCloud2, queue_size=1)

    r = rospy.Rate (6)
    while not rospy.is_shutdown():
        try:
            resp = assemble_scans(rospy.Time(0,0), rospy.get_rostime())
            pub.publish (resp.cloud)
            print str(resp.cloud)

        except rospy.ServiceException, e:
            print "Service call failed: %s"%e

        r.sleep()


if __name__ == '__main__':
  main()