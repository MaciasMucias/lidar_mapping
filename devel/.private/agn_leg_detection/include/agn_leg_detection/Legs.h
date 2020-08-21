// Generated by gencpp from file agn_leg_detection/Legs.msg
// DO NOT EDIT!


#ifndef AGN_LEG_DETECTION_MESSAGE_LEGS_H
#define AGN_LEG_DETECTION_MESSAGE_LEGS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <agn_leg_detection/Leg.h>

namespace agn_leg_detection
{
template <class ContainerAllocator>
struct Legs_
{
  typedef Legs_<ContainerAllocator> Type;

  Legs_()
    : legsCrowd()
    , count()
    , first(0)
    , end(0)  {
    }
  Legs_(const ContainerAllocator& _alloc)
    : legsCrowd(_alloc)
    , count(_alloc)
    , first(0)
    , end(0)  {
  (void)_alloc;
    }



   typedef std::vector< ::agn_leg_detection::Leg_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::agn_leg_detection::Leg_<ContainerAllocator> >::other >  _legsCrowd_type;
  _legsCrowd_type legsCrowd;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _count_type;
  _count_type count;

   typedef int64_t _first_type;
  _first_type first;

   typedef int64_t _end_type;
  _end_type end;





  typedef boost::shared_ptr< ::agn_leg_detection::Legs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agn_leg_detection::Legs_<ContainerAllocator> const> ConstPtr;

}; // struct Legs_

typedef ::agn_leg_detection::Legs_<std::allocator<void> > Legs;

typedef boost::shared_ptr< ::agn_leg_detection::Legs > LegsPtr;
typedef boost::shared_ptr< ::agn_leg_detection::Legs const> LegsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agn_leg_detection::Legs_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agn_leg_detection::Legs_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace agn_leg_detection

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'agn_leg_detection': ['/home/plugit/lidar_mapping/src/agn_leg_detection/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::agn_leg_detection::Legs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agn_leg_detection::Legs_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agn_leg_detection::Legs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agn_leg_detection::Legs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agn_leg_detection::Legs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agn_leg_detection::Legs_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agn_leg_detection::Legs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "76d9ee6e4cc8f63f7aa21a45f727d8d1";
  }

  static const char* value(const ::agn_leg_detection::Legs_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x76d9ee6e4cc8f63fULL;
  static const uint64_t static_value2 = 0x7aa21a45f727d8d1ULL;
};

template<class ContainerAllocator>
struct DataType< ::agn_leg_detection::Legs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agn_leg_detection/Legs";
  }

  static const char* value(const ::agn_leg_detection::Legs_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agn_leg_detection::Legs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agn_leg_detection/Leg[] legsCrowd\n\
int64[] count\n\
int64 first\n\
int64 end\n\
 \n\
\n\
================================================================================\n\
MSG: agn_leg_detection/Leg\n\
geometry_msgs/Pose pose\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::agn_leg_detection::Legs_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agn_leg_detection::Legs_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.legsCrowd);
      stream.next(m.count);
      stream.next(m.first);
      stream.next(m.end);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Legs_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agn_leg_detection::Legs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agn_leg_detection::Legs_<ContainerAllocator>& v)
  {
    s << indent << "legsCrowd[]" << std::endl;
    for (size_t i = 0; i < v.legsCrowd.size(); ++i)
    {
      s << indent << "  legsCrowd[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::agn_leg_detection::Leg_<ContainerAllocator> >::stream(s, indent + "    ", v.legsCrowd[i]);
    }
    s << indent << "count[]" << std::endl;
    for (size_t i = 0; i < v.count.size(); ++i)
    {
      s << indent << "  count[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.count[i]);
    }
    s << indent << "first: ";
    Printer<int64_t>::stream(s, indent + "  ", v.first);
    s << indent << "end: ";
    Printer<int64_t>::stream(s, indent + "  ", v.end);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGN_LEG_DETECTION_MESSAGE_LEGS_H