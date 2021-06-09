// Implémentation des fonctions

#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"
#include "angles/angles.h"

namespace rowenta{

ros::Publisher velocity_publisher;
ros::Subscriber pose_subscriber; // to determinate the position for turning the robot
turtlesim::Pose turtlesim_pose;

const double x_min = 0.0;
const double y_min = 0.0;
const double x_max = 11.0;
const double y_max = 11.0;

const double PI = 3.14159265359;

//Topic messages callback
void poseCallback(const turtlesim::Pose::ConstPtr &pose_msgs){
	
	//turtlesim_pose.x
	
	ROS_INFO("x: %2f \t y: %2f \t theta: %2f",
			pose_msgs->x, pose_msgs->y, pose_msgs->theta);
	
	turtlesim_pose.x = pose_msgs->x;
	turtlesim_pose.y = pose_msgs->y;
	turtlesim_pose.theta = pose_msgs->theta;
	}

//Move
 void move (double speed, double distance, bool isForward)
 {
	geometry_msgs::Twist vel_msg;
	if(isForward){
		vel_msg.linear.x = abs(speed);
	}
	else{
		vel_msg.linear.x = -abs(speed);
	}
	double t0 = ros::Time::now().toSec();
	double current_distance = 0.0;
	ros::Rate loop_rate(10);
	do{
		velocity_publisher.publish(vel_msg);
		double t1 = ros::Time::now().toSec();
		current_distance = speed * (t1 - t0);
		ros::spinOnce();
		loop_rate.sleep();
	}while(current_distance < distance);
	vel_msg.linear.x = 0;
	velocity_publisher.publish(vel_msg);
 }
 
 //Rotation
 void rotate(double deg_angular_speed, double deg_angle, bool clockwise){
	 
	/* double rad_angle = angles::from_degrees(deg_angle); //deg_angle*PI/180; */
	double rad_angle = deg_angle*PI/180;
	/* double rad_angular_speed = angles::from_degrees(deg_angular_speed); //deg_angular_speed*PI/180; */
	double rad_angular_speed = deg_angular_speed*PI/180;
	geometry_msgs::Twist vel_msg;
	if(clockwise){
		vel_msg.angular.z = -abs(rad_angular_speed);
	} else {
		vel_msg.angular.z = abs(rad_angular_speed);
	}
	double current_angle = 0.0;
	double t0 = ros::Time::now().toSec();
	ros::Rate loop_rate(10);
	ROS_INFO_STREAM("Outside curr: " << current_angle << " rad: " << rad_angle);
	do{
		velocity_publisher.publish(vel_msg);
		double t1 = ros::Time::now().toSec();
		current_angle = rad_angular_speed * (t1-t0);
		ROS_INFO_STREAM("Inside curr: " << current_angle << " rad: " << rad_angle);
		ros::spinOnce();
		loop_rate.sleep();
	}while(current_angle < rad_angle);
 
	//On arrete tout
	vel_msg.angular.z = 0;
	velocity_publisher.publish(vel_msg);
 }
 
 //Go to goal
 /* void moveGoal(turtlesim::Pose goal_pose, double distance_tolerance)
 {
	 geometry_msgs::Twist vel_msg;

	 ros::Rate loop_rate(100);
	 double E = 0.0;
	 do{
		 double Kp=1.0;
		 double Ki=0.02;

		 double e = getDistance(turtlesim_pose.x, turtlesim_pose.y, goal_pose.x, goal_pose.y);
		 double E = E+e;

		 vel_msg.linear.x = (Kp*e);
		 vel_msg.angular.z = 4*(atan2(goal_pose.y-turtlesim_pose.y, goal_pose.x-turtlesim_pose.x)-turtlesim_pose.theta);

		 velocity_publisher.publish(vel_msg);

		 ros::spinOnce();
		 loop_rate.sleep();

	 }while(getDdistance(turtlesim_pose.x, turtlesim_pose.y, goal_pose.x, goal_pose.y)>distance_tolerance);
	 cout<<"end move goal"<<endl;
	 vel_msg.linear.x = 0;
	 vel_msg.angular.z = 0;
	 velocity_publisher.publish(vel_msg);
 } */

 void moveGoal(turtlesim::Pose goal, double tolerance){
        geometry_msgs::Twist vel_msg;
        ros::Rate loop_rate(100);
        double E = 0.0;
        do{
            double Kp = 1.0; double Ki = 0.02;
            double e = getDistanceFromPose(goal);
            double E = E+e;
            vel_msg.linear.x = (Kp *e);
            vel_msg.angular.z = 4*(atan2(goal.y-turtlesim_pose.y, goal.x-turtlesim_pose.x)-turtlesim_pose.theta);
            velocity_publisher.publish(vel_msg);
            ros::spinOnce();
            loop_rate.sleep();
        } while(getDistanceFromPose(goal)>tolerance);
        ROS_INFO_STREAM("Moved to goal");
        vel_msg.linear.x = 0;
        vel_msg.angular.z = 0;
        velocity_publisher.publish(vel_msg);
    }

    void setDesiredOrientation(double desired_angle_degree){
        double relative_angle_radians = angles::from_degrees(desired_angle_degree) - turtlesim_pose.theta;
        bool clockwise = ((relative_angle_radians < 0) ? true : false);
        rotate(10, abs(angles::to_degrees(relative_angle_radians)), clockwise);
    }

    void spiral(double rk, double wk){
        geometry_msgs::Twist vel_msg;
        ros::Rate loop_rate(1);
        do{
            rk = rk + 0.05;
            vel_msg.linear.x = rk;
            vel_msg.angular.z = wk;
            velocity_publisher.publish(vel_msg);
            ros::spinOnce();
            loop_rate.sleep();
        } while((turtlesim_pose.x < x_max) && (turtlesim_pose.y < y_max));
        vel_msg.linear.x = 0;
        velocity_publisher.publish(vel_msg);
    }

    void gridClean(const double error){
        ros::Rate loop(0.5);
        turtlesim::Pose pose;
        pose.x = 1;
        pose.y = 1;
        pose.theta = 0;
        moveGoal(pose, 0.01); // aller en bas a gauche
        loop.sleep();
        setDesiredOrientation(0); // regarder vers la droite
        loop.sleep();

        move(2.0, 9.0, true); // aller tout a droite
        loop.sleep();
        rotate(10, 90, false); // regarder vers le haut
        loop.sleep();
        

        while(getDistanceFromPose(pose) > error){
            ROS_INFO_STREAM("*********** Distance from origin -> " << getDistanceFromPose(pose) << " ***********");
            move(2.0,9.0,true); // aller tout en haut
            rotate(10,90,false); // regarder a gauche
            loop.sleep();
            move(2.0, 1.0, true); // avancer vers la gauche
            rotate(10, 90, false);  // tourner vers le bas
            loop.sleep();
            move(2.0, 9.0, true); // avancer tout en bas
            rotate(10,90,true); // regarder a gauche
            loop.sleep();
            move(2.0,1.0, true); // avancer un petit peu vers la gauche
            rotate(10, 90, true); // tourner vers le haut
            loop.sleep();
        }
        pose.x = x_max/2;
        pose.y = y_max/2;
        pose.theta = 0;
        moveGoal(pose, 0.01);
    }
}
