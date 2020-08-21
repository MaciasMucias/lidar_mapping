// Generated by gencpp from file agn_leg_detection/hashem.msg
// DO NOT EDIT!


#ifndef AGN_LEG_DETECTION_MESSAGE_HASHEM_H
#define AGN_LEG_DETECTION_MESSAGE_HASHEM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>

namespace agn_leg_detection
{
template <class ContainerAllocator>
struct hashem_
{
  typedef hashem_<ContainerAllocator> Type;

  hashem_()
    : listtosend()  {
    }
  hashem_(const ContainerAllocator& _alloc)
    : listtosend(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::std_msgs::Float32_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::std_msgs::Float32_<ContainerAllocator> >::other >  _listtosend_type;
  _listtosend_type listtosend;





  typedef boost::shared_ptr< ::agn_leg_detection::hashem_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agn_leg_detection::hashem_<ContainerAllocator> const> ConstPtr;

}; // struct hashem_

typedef ::agn_leg_detection::hashem_<std::allocator<void> > hashem;

typedef boost::shared_ptr< ::agn_leg_detection::hashem > hashemPtr;
typedef boost::shared_ptr< ::agn_leg_detection::hashem const> hashemConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agn_leg_detection::hashem_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agn_leg_detection::hashem_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::agn_leg_detection::hashem_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agn_leg_detection::hashem_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agn_leg_detection::hashem_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agn_leg_detection::hashem_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agn_leg_detection::hashem_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agn_leg_detection::hashem_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agn_leg_detection::hashem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c9210d52caeda3a0513264e2e2ed87c8";
  }

  static const char* value(const ::agn_leg_detection::hashem_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc9210d52caeda3a0ULL;
  static const uint64_t static_value2 = 0x513264e2e2ed87c8ULL;
};

template<class ContainerAllocator>
struct DataType< ::agn_leg_detection::hashem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agn_leg_detection/hashem";
  }

  static const char* value(const ::agn_leg_detection::hashem_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agn_leg_detection::hashem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32[] listtosend\n\
\n\
================================================================================\n\
MSG: std_msgs/Float32\n\
float32 data\n\
";
  }

  static const char* value(const ::agn_leg_detection::hashem_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agn_leg_detection::hashem_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.listtosend);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct hashem_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agn_leg_detection::hashem_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agn_leg_detection::hashem_<ContainerAllocator>& v)
  {
    s << indent << "listtosend[]" << std::endl;
    for (size_t i = 0; i < v.listtosend.size(); ++i)
    {
      s << indent << "  listtosend[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "    ", v.listtosend[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGN_LEG_DETECTION_MESSAGE_HASHEM_H
