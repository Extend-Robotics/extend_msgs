# The name of this goal's end effector link
string link_name

# The name of the link that the goal is defined with respect to
# camelCase keeps this message ROS 1 only (rosidl requires snake_case);
# renaming it changes the rosbridge JSON contract, so extend_bio_ik and the
# Unity sender must move in lockstep with it (see CMakeLists.txt, ERD-2166)
string referenceLinkName

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The goal pose into which the end effector link shall be brought
geometry_msgs/Pose pose

