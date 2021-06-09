#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"
#include "rowenta/rowenta.h"
 
int main(int argc, char **argv)
{
	const double FORWARD_SPEED_MPS = 0.5;
	std::string robot_name = std::string(argv[1]);

	// Initialize the node
	ros::init(argc, argv, "rowenta");
	ros::NodeHandle node;

	// A publisher for the movement data
	rowenta::velocity_publisher=node.advertise<geometry_msgs::Twist>(robot_name+"/cmd_vel", 10);
	//ros::Publisher pub = node.advertise<geometry_msgs::Twist>(robot_name+"/cmd_vel", 10);

	//A listener for pose
	rowenta::pose_subscriber=node.subscribe(robot_name+"/pose", 10, rowenta::poseCallback);
	//ros::Subscriber sub = node.subscribe(robot_name+"/pose", 10, poseCallback);
 
	// Drive forward at a given speed. The robot points up the x-axis.
	// The default constructor will set all commands to 0
	/*geometry_msgs::Twist msg;
	msg.linear.x = FORWARD_SPEED_MPS;

	// Loop at 10Hz, publishing movement commands until we shut down
	ros::Rate rate(10);
	ROS_INFO("Starting to move forward");
	while (ros::ok()){​​​​​​​​

	//while(msg.linear.x<)
	//pub.publish(msg);
	ros::spinOnce(); //Allow processing of incoming messages
	rate.sleep();
	}​​​​​​​​*/
	
	rowenta::move(FORWARD_SPEED_MPS,2.0,true);
	/* rowenta::move(5,90,true); */
	rowenta::rotate(10,90,true);
	rowenta::moveGoal(5,2.0);
	rowenta::move(FORWARD_SPEED_MPS,2.0,true);
	rowenta::rotate(10,90,true);
}
