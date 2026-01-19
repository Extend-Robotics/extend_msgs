# This field provides the input tracking system
string input_system

# Name of the Object with which the hand is interacting
string interacting_object

# Headset Position wrt World
geometry_msgs/Pose headset_pose

# Torso Position wrt Headset
geometry_msgs/Pose torso_pose

# Elbows Positions wrt Headset
geometry_msgs/Pose left_elbow_pose
geometry_msgs/Pose right_elbow_pose

# Wrist Positions wrt Headset
geometry_msgs/Pose left_wrist_pose
geometry_msgs/Pose right_wrist_pose