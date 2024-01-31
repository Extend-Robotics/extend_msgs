std_msgs/Header header

# armResponse denotes the state of the physical robot arm
std_msgs/Int16 armResponse

# bioIKResponse denotes the state of the bio IK
std_msgs/Int16 bioIKResponse

# jointStates contains present position (in  radians) of each active joint
float64[] jointStates

float64[] jointTorque

# linkDetails contains the detail such as the name and the Pose of the target link in the physical robot
extend_msgs/LinkDetails[] linkDetails


# Plan using planner
moveit_msgs/RobotTrajectory plan
