// Generated by gencpp from file socket_manager/GetDistanceFromWallRequest.msg
// DO NOT EDIT!


#ifndef SOCKET_MANAGER_MESSAGE_GETDISTANCEFROMWALLREQUEST_H
#define SOCKET_MANAGER_MESSAGE_GETDISTANCEFROMWALLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace socket_manager
{
template <class ContainerAllocator>
struct GetDistanceFromWallRequest_
{
  typedef GetDistanceFromWallRequest_<ContainerAllocator> Type;

  GetDistanceFromWallRequest_()
    {
    }
  GetDistanceFromWallRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetDistanceFromWallRequest_

typedef ::socket_manager::GetDistanceFromWallRequest_<std::allocator<void> > GetDistanceFromWallRequest;

typedef boost::shared_ptr< ::socket_manager::GetDistanceFromWallRequest > GetDistanceFromWallRequestPtr;
typedef boost::shared_ptr< ::socket_manager::GetDistanceFromWallRequest const> GetDistanceFromWallRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace socket_manager

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "socket_manager/GetDistanceFromWallRequest";
  }

  static const char* value(const ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetDistanceFromWallRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::socket_manager::GetDistanceFromWallRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // SOCKET_MANAGER_MESSAGE_GETDISTANCEFROMWALLREQUEST_H
