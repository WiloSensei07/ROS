// Generated by gencpp from file my_first_topic/position.msg
// DO NOT EDIT!


#ifndef MY_FIRST_TOPIC_MESSAGE_POSITION_H
#define MY_FIRST_TOPIC_MESSAGE_POSITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace my_first_topic
{
template <class ContainerAllocator>
struct position_
{
  typedef position_<ContainerAllocator> Type;

  position_()
    : header()
    , x(0.0)
    , y(0.0)
    , angle(0.0)  {
    }
  position_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , x(0.0)
    , y(0.0)
    , angle(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::my_first_topic::position_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_first_topic::position_<ContainerAllocator> const> ConstPtr;

}; // struct position_

typedef ::my_first_topic::position_<std::allocator<void> > position;

typedef boost::shared_ptr< ::my_first_topic::position > positionPtr;
typedef boost::shared_ptr< ::my_first_topic::position const> positionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_first_topic::position_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_first_topic::position_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_first_topic::position_<ContainerAllocator1> & lhs, const ::my_first_topic::position_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_first_topic::position_<ContainerAllocator1> & lhs, const ::my_first_topic::position_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_first_topic

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::my_first_topic::position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_first_topic::position_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_first_topic::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_first_topic::position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_first_topic::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_first_topic::position_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_first_topic::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0dddc77aef0a3a360e11329b0db00bf9";
  }

  static const char* value(const ::my_first_topic::position_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0dddc77aef0a3a36ULL;
  static const uint64_t static_value2 = 0x0e11329b0db00bf9ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_first_topic::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_first_topic/position";
  }

  static const char* value(const ::my_first_topic::position_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_first_topic::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A 2D Position: X,Y, and angle\n"
"Header header\n"
"float64 x\n"
"float64 y\n"
"float64 angle\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::my_first_topic::position_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_first_topic::position_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct position_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_first_topic::position_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_first_topic::position_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_FIRST_TOPIC_MESSAGE_POSITION_H
