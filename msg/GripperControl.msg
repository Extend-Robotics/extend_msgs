# Header Values
std_msgs/Header header

#Name of the end effector
string eefName

# ID of the end effector
int32[] eefID

#IO Pin setting for end effector
std_msgs/Int16 eefPinSetup

#End Effector Modes (Currently not in used)
std_msgs/Int16 mode

#Command for the End Effector Joints  (Length is based on the DOF of the end effector)
trajectory_msgs/JointTrajectoryPoint eefJointTrajectoryPoint