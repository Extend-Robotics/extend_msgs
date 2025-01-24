cmake_minimum_required(VERSION 2.8.3)
project(extend_msgs)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  message_generation
  geometry_msgs
  genmsg
  sensor_msgs
  moveit_msgs
  nav_msgs
  actionlib 
  actionlib_msgs
)

add_message_files(
  FILES
  ArmControl.msg
  ArmResponse.msg
  ControlDebug.msg
  ExtendControl.msg
  ExtendResponse.msg
  FileUploadStatus.msg
  GripperControl.msg
  GripperResponse.msg
  JointInfo.msg
  MobileBaseCommand.msg
  MobileBaseResponse.msg
  SensorInfo.msg
  TargetLinkInfo.msg
)

add_service_files(
  FILES
  GetListOfFiles.srv
  LoadAllFilesInFolder.srv
  LoadFile.srv
  SaveFile.srv
  DeleteFile.srv
  ControlManager.srv
)

add_action_files(
  DIRECTORY action
  FILES CollectData.action
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  sensor_msgs
  moveit_msgs
  nav_msgs
  actionlib 
  actionlib_msgs
)

catkin_package(
  DEPENDS message_runtime
)
