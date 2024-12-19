std_msgs/Header header

#Digital control for 2F gripper 
std_msgs/Bool gripperDigitalCommand

#Analog control for 2F gripper 
std_msgs/Float64 gripperAnalogCommand

#Effort Based control for 2F gripper 
std_msgs/Float64 gripperEffortCommand

#IO Pin setting for 2F gripper 
std_msgs/Int16 gripperPinSetup

#Joint Value Command for 5F gripper 
float64[] handJointValuesCommand

#Joint Velocity Command for 5F gripper
float64[] handJointVelocitiesCommand

#Joint Effort Command for 5F gripper
float64[] handJointEffortsCommand
