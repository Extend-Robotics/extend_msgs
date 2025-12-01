# This field provides the input tracking system
string input_system

# Name of the Object with which the hand is interacting
string interacting_object

# Analog value for control
std_msgs/Float64 analog_value

# Gesture currently requested by user with multi finger gripper and controller
string active_gesture_name

# TF data for the particular hand
tf2_msgs/TFMessage hand_tf

# Bend Values from hand joints
std_msgs/Float64[] hand_joint_bend_values