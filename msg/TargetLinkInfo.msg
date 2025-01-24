# The name of this goal's end effector link
string linkName

# Type of the IK goal
string goalType

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

#The target goal pose for the link to achive
geometry_msgs/Pose targetPose

# The link pose based on the tf wrt to the base of the robot
geometry_msgs/Pose actualPose
