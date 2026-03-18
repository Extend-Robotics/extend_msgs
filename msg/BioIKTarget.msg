# The name of this goal's end effector link
string linkName

# The name of the link that the goal is defined with respect to
string referenceLinkName

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The goal pose into which the end effector link shall be brought
geometry_msgs/Pose pose

