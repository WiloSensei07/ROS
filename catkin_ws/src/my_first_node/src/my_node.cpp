/**
** Simple ROS Node
**/
#include <ros/ros.h>
int main(int argc, char* argv[])
{

// This must be called before anything else ROS-related
	ros::init(argc, argv, "my_node");
// Create a ROS node handle
	ros::NodeHandle node;
// Set the rate at which we print out our message (1Hz)
	ros::Rate loop_rate(1.0);
// A simple counter for the number of times we iterate through the loop
	int count = 0;
// Loop through until the ROS system tells the user to shut down
	while(ros::ok())
{
// Print out a message
	ROS_INFO_STREAM("We've gone through " << count << " times.");
	++count;
// Wait the stated duration
	loop_rate.sleep();

//	On peut définir des 'params' privés au 'node' courant, ils seront donc relatifs au namespace du 'node'
// courant et commenceront (par exemple) par '/my_node/...' si le namespace du node courant est '/'.
	ros::NodeHandle node_private("~");
	node_private.setParam("/global_param", 7);
	node_private.setParam("relative_param", "my_string");
	node_private.setParam("bool_param", false);
	
	if (node.hasParam("my_param"))
	{
		float my_value_param;
		bool return_get = node.getParam("my_param", my_value_param);
		ROS_INFO_STREAM("We've get param value " << my_value_param);
	}
	
	if (node.hasParam("/my_list"))
	{
		std::vector<std::string> my_list_param;
		bool return_get = node.getParam("my_list", my_list_param);
		if (return_get)
		{
			ROS_INFO_STREAM("We've get 'list' param value ");
			for (std::vector<std::string>::iterator it = my_list_param.begin() ; it != my_list_param.end(); ++it)
				ROS_INFO("--> %s",(*it).c_str());
		}
		else
		ROS_INFO_STREAM("We've NOT get list param value ");
	}
	
	if (node.hasParam("my_dictionary"))
	{
		std::map<std::string,std::string> my_dic;
		bool return_get = node.getParam("my_dictionary", my_dic);
		if (return_get)
		{
			ROS_INFO_STREAM("We've get 'dic' param value ");
			for (std::map<std::string,std::string>::iterator it=my_dic.begin(); it!=my_dic.end(); ++it)
				ROS_INFO("--> %s : %s", (it->first).c_str(), (it->second).c_str());
		}
		else
		ROS_INFO_STREAM("We've NOT get dic param value ");
	}

}
// Exit the program.

	return 0;
}
