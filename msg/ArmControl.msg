std_msgs/Header header

# mode used to decide the operation mode could be 
# 0 - Teleoperation mode
# 1 - Planning mode
# 2 - No operation
std_msgs/Int16 mode

# List of IK targets 
extend_msgs/BioIKTarget[] targets
