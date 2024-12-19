std_msgs/Header header

# armStatus denotes the state of the physical robot arm
std_msgs/Int16 armStatus

# bioIKState denotes the state of the bio IK
std_msgs/Int16 bioIKState

#Joint Info
extend_msgs/JointInfo armJointInfo

# linkDetails contains the detail such as the name and the Pose of the target link in the physical robot
extend_msgs/LinkDetails[] linkDetails

# Plan using planner
moveit_msgs/RobotTrajectory plan

# Sensor Info 
extend_msgs/SensorInfo[] armSensorInfo

