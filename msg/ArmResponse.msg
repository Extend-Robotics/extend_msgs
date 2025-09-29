std_msgs/Header header

# armResponse denotes the state of the physical robot arm
std_msgs/Int16 arm_response

# bioIKResponse denotes the state of the bio IK
std_msgs/Int16 bio_ik_response

# jointStates contains present position (in  radians) of each active joint
float64[] joint_states

float64[] joint_torque

# linkDetails contains the detail such as the name and the Pose of the target link in the physical robot
extend_msgs/LinkDetails[] link_details


# Plan using planner
moveit_msgs/RobotTrajectory plan
