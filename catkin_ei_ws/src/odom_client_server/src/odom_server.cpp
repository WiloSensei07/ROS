#include "ros/ros.h"
#include "odom_client_server/diffodom.h"

 

bool calcul(odom_client_server::diffodom::Request  &req,
         odom_client_server::diffodom::Response &res)
{
  res.Vx = (req.r*req.phi1)/2 + (req.r*req.phi2)/2;
  res.theta = (req.r*req.phi1)/(2*req.l) - (req.r*req.phi2)/(2*req.l);
  ROS_INFO("request: r=%lf, l=%lf, psi_d1=%lf, psi_d2=%lf", (float)req.r, (float)req.l,(float)req.phi1,(float)req.phi2);
  ROS_INFO("sending back response:  [%lf]  [%lf]", (float)res.Vx,(float)res.theta);
  return true;
} 
int main(int argc, char **argv)
{
  ros::init(argc, argv, "odom_server");
  ros::NodeHandle n; 
  ros::ServiceServer service = n.advertiseService("diffodom", calcul);
  ROS_INFO("Ready to compute odometry.");
  ros::spin(); 
  return 0;
}