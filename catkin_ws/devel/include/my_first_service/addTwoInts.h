// Generated by gencpp from file my_first_service/addTwoInts.msg
// DO NOT EDIT!


#ifndef MY_FIRST_SERVICE_MESSAGE_ADDTWOINTS_H
#define MY_FIRST_SERVICE_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <my_first_service/addTwoIntsRequest.h>
#include <my_first_service/addTwoIntsResponse.h>


namespace my_first_service
{

struct addTwoInts
{

typedef addTwoIntsRequest Request;
typedef addTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct addTwoInts
} // namespace my_first_service


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_first_service::addTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::my_first_service::addTwoInts&) { return value(); }
};

template<>
struct DataType< ::my_first_service::addTwoInts > {
  static const char* value()
  {
    return "my_first_service/addTwoInts";
  }

  static const char* value(const ::my_first_service::addTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::my_first_service::addTwoIntsRequest> should match
// service_traits::MD5Sum< ::my_first_service::addTwoInts >
template<>
struct MD5Sum< ::my_first_service::addTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_first_service::addTwoInts >::value();
  }
  static const char* value(const ::my_first_service::addTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_first_service::addTwoIntsRequest> should match
// service_traits::DataType< ::my_first_service::addTwoInts >
template<>
struct DataType< ::my_first_service::addTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::my_first_service::addTwoInts >::value();
  }
  static const char* value(const ::my_first_service::addTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_first_service::addTwoIntsResponse> should match
// service_traits::MD5Sum< ::my_first_service::addTwoInts >
template<>
struct MD5Sum< ::my_first_service::addTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_first_service::addTwoInts >::value();
  }
  static const char* value(const ::my_first_service::addTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_first_service::addTwoIntsResponse> should match
// service_traits::DataType< ::my_first_service::addTwoInts >
template<>
struct DataType< ::my_first_service::addTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::my_first_service::addTwoInts >::value();
  }
  static const char* value(const ::my_first_service::addTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_FIRST_SERVICE_MESSAGE_ADDTWOINTS_H