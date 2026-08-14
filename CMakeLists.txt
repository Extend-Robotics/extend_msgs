cmake_minimum_required(VERSION 3.8)
project(extend_msgs)

# One branch serves both ROS versions (ERD-2166): the catkin and colcon builds
# of the combined image each take their arm of this dispatch.
# ArmResponse (moveit_msgs), ArmControl and BioIKTarget (camelCase field
# rosidl rejects) are generated for ROS 1 only.

if("$ENV{ROS_VERSION}" STREQUAL "1")

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
    tf2_msgs
  )

  add_message_files(
    FILES
    ArmControl.msg
    ArmResponse.msg
    GripperControl.msg
    BioIKTarget.msg
    LinkDetails.msg
    ControlDebug.msg
    Float64MultiArrayStamped.msg
    GripperResponse.msg
    FileUploadStatus.msg
    GripperJointInfo.msg
    GripperSensorInfo.msg
    CortexConfiguration.msg
    ConnectionManager.msg
    VRHandStates.msg
    HandStateInfo.msg
    VRTransform.msg
  )

  add_service_files(
    FILES
    GetListOfFiles.srv
    LoadAllFilesInFolder.srv
    LoadFile.srv
    SaveFile.srv
    DeleteFile.srv
    ControlManager.srv
    CortexConfigurationInfo.srv
    SafetyParameter.srv
    RaiseOperatorError.srv
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
    tf2_msgs
  )

  catkin_package(
    DEPENDS message_runtime
  )

elseif("$ENV{ROS_VERSION}" STREQUAL "2")

  find_package(ament_cmake REQUIRED)
  find_package(std_msgs REQUIRED)
  find_package(geometry_msgs REQUIRED)
  find_package(sensor_msgs REQUIRED)
  find_package(nav_msgs REQUIRED)
  find_package(tf2_msgs REQUIRED)
  find_package(rosidl_default_generators REQUIRED)

  rosidl_generate_interfaces(${PROJECT_NAME}
    msg/GripperControl.msg
    msg/LinkDetails.msg
    msg/ControlDebug.msg
    msg/Float64MultiArrayStamped.msg
    msg/GripperResponse.msg
    msg/FileUploadStatus.msg
    msg/GripperJointInfo.msg
    msg/GripperSensorInfo.msg
    msg/CortexConfiguration.msg
    msg/ConnectionManager.msg
    msg/VRHandStates.msg
    msg/HandStateInfo.msg
    msg/VRTransform.msg
    srv/GetListOfFiles.srv
    srv/LoadAllFilesInFolder.srv
    srv/LoadFile.srv
    srv/SaveFile.srv
    srv/DeleteFile.srv
    srv/ControlManager.srv
    srv/CortexConfigurationInfo.srv
    srv/SafetyParameter.srv
    srv/RaiseOperatorError.srv
    action/CollectData.action
    DEPENDENCIES std_msgs geometry_msgs sensor_msgs nav_msgs tf2_msgs
  )

  ament_package()

else()

  message(FATAL_ERROR
    "ROS_VERSION environment variable must be 1 or 2, got '$ENV{ROS_VERSION}'")

endif()
