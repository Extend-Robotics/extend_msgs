std_msgs/Header header

#Digital control for 2F gripper 
std_msgs/Bool gripperDigitalCommand

#Analog control for 2F gripper 
std_msgs/Float64 gripperAnalogCommand

#Effort Based control for 2F gripper 
std_msgs/Float64 gripperEffortCommand

#IO Pin setting for 2F gripper 
std_msgs/Int16 gripperPinSetup

#Joint Based Commands for 5F Gripper
extend_msgs/JointCommand gripperJointCommands