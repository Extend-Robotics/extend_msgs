#Header Values
std_msgs/Header header

#Control command for the Arms
extend_msgs/ArmControl armControl

#Control command for the End Effectors
extend_msgs/GripperControl gripperControl

#Control command for the Mobile Base
extend_msgs/MobileBaseCommand mobileBaseControl

#Request to service manager to perform tasks such as clear error, ft sensor initialization, mode or state change, etc.
std_msgs/Int16 operationalRequest