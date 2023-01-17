cmake_minimum_required(VERSION 2.8.3)
project(extend_msgs)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  message_generation
  geometry_msgs
  moveit_msgs
  genmsg
  sensor_msgs
)

add_message_files(
  FILES
  ArmControl.msg
  ArmResponse.msg
  GripperControl.msg
)

add_service_files(
  FILES
  GetListOfFiles.srv
  LoadAllFilesInFolder.srv
  LoadFile.srv
  SaveFile.srv
  DeleteFile.srv
)


generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  moveit_msgs
  sensor_msgs
)

catkin_package(
  DEPENDS message_runtime
)
