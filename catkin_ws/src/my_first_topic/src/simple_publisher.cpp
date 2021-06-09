/**
** Simple ROS Publisher Node
**/
#include <ros/ros.h>
#include <my_first_topic/position.h>
int main(int argc, char* argv[])
{
	ros::init(argc, argv, "simple_publisher");
	ros::NodeHandle node;
	// Create a 1Hz update rate
	ros::Rate loop_rate(1.0);
	// Advertise that we're publishing the topic "my_position", of type 'position'
	ros::Publisher pub = node.advertise<my_first_topic::position>("/my_position", 1000);
	// The angle counter
	int angle = 0;
	// The angle increment
	int angle_increment = 10;
	ROS_INFO("Starting publisher");
	while(ros::ok())
	{
		// Create a message, and set the fields appropriately
		my_first_topic::position msg;
		msg.header.stamp = ros::Time::now();
		msg.angle = angle * 3.141592 / 180.0;
		msg.x = 100.0 * cos(msg.angle);
		msg.y = 100.0 * sin(msg.angle);
		// Update angle
		angle = (angle + angle_increment) % 360;
		// Publish the message, give ROS an opportunity to run
		pub.publish(msg);
		// Handles the callback events and returns immediately
		ros::spinOnce();
		ROS_INFO("Published message %.1f, %.1f, %.1f", msg.x, msg.y, msg.angle * 180.0 / 3.141592);
		// Wait 1 second to publish again
		loop_rate.sleep();
	}
	ROS_INFO("Publisher done.");
	return 0;
}
