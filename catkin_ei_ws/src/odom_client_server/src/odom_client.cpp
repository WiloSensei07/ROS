#include "ros/ros.h"
#include "odom_client_server/diffodom.h"
#include <cstdlib>

 

int main(int argc, char **argv)
{
  ros::init(argc, argv, "odom_client");
  if (argc != 5)
  {
    ROS_INFO("usage: odom_client r phi1 phi2 l");
    return 1;
  } 
  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<odom_client_server::diffodom>("diffodom");
  odom_client_server::diffodom srv;
  srv.request.r = atof(argv[1]);
  srv.request.l = atof(argv[2]);
  srv.request.phi1 = atof(argv[3]);
  srv.request.phi2 = atof(argv[4]);
  
  if (client.call(srv))
  {
    ROS_INFO(" sending back response : [%lf]  [%lf]", (float)srv.response.Vx,(float)srv.response.theta);
  }
  else
  {
    ROS_ERROR("Failed to call service diffodom");
    return 1;
  } 
  return 0;
}