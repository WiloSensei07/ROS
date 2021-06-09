/**
** Simple ROS Subscriber Node
**/
#include <ros/ros.h>
#include <my_first_topic/position.h>
void positionCallback(const my_first_topic::position& msg)
{
	ROS_INFO("New position: %.1f,%.1f,%.1f", msg.x, msg.y, msg.angle * 180.0 / 3.141592);
}
int main(int argc, char* argv[])
{
	ros::init(argc, argv, "simple_subscriber");
	ros::NodeHandle node;
	// Subscribe to the topic '/my_position' with a buffer length of 1000
	// and a callback function 'positionCallback'.
	ros::Subscriber subscriber = node.subscribe("/my_position", 1000, positionCallback);
	// Block and process ROS messages and callback until the node has been shutdown
	ros::spin();
	return 0;
}
