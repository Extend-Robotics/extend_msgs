std_msgs/Header header

# mode used to decide the operation mode could be 
# 0 - Teleoperation
# 1 - No operation
# 2 - Planning
# 3 - Plan Execution
# 4 - Plan Execution Stop
# 5 - Joint Commands
std_msgs/Int16 mode

# List of IK targets 
extend_msgs/TargetLinkInfo[] targetLinksInfo

#Trajectory Point Command bypassing the IK system (safety checks are checked)
trajectory_msgs/JointTrajectoryPoint jointTrajectoryPoint
