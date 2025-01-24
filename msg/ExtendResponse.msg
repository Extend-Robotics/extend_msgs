std_msgs/Header header

#Response from the robotic arm
extend_msgs/ArmResponse armResponse

#Response from the end effector
extend_msgs/GripperResponse gripperResponse

#Response from the Mobile Base
extend_msgs/MobileBaseResponse mobileBaseResponse

#Response from service manager to perform tasks such as clear error, ft sensor initialization, mode or state change, etc.
std_msgs/Int16 operationalResponse