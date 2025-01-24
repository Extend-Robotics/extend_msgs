std_msgs/Header header

# armStatus denotes the state of the physical robot arm
std_msgs/Int16 armStatus

# IK status denotes the state of the IK system (return error codes from safety check, initial realign and ik solution quality)
std_msgs/Int16 bioIKState

#Joint Info
extend_msgs/JointInfo armJointInfo

# linkDetails contains the detail such as the name and the Pose of the target link in the physical robot
extend_msgs/TargetLinkInfo[] targetLinkDetails

# Plan using planner
moveit_msgs/RobotTrajectory plan

# Sensor Info 
extend_msgs/SensorInfo[] armSensorInfo

