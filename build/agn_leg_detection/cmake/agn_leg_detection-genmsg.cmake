# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "agn_leg_detection: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iagn_leg_detection:/home/plugit/lidar_mapping/src/agn_leg_detection/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(agn_leg_detection_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg" NAME_WE)
add_custom_target(_agn_leg_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agn_leg_detection" "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg" "std_msgs/Float32"
)

get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg" NAME_WE)
add_custom_target(_agn_leg_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agn_leg_detection" "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg" ""
)

get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg" NAME_WE)
add_custom_target(_agn_leg_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agn_leg_detection" "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:agn_leg_detection/Leg"
)

get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg" NAME_WE)
add_custom_target(_agn_leg_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agn_leg_detection" "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_cpp(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_cpp(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_cpp(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agn_leg_detection
)

### Generating Services

### Generating Module File
_generate_module_cpp(agn_leg_detection
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agn_leg_detection
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(agn_leg_detection_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(agn_leg_detection_generate_messages agn_leg_detection_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_cpp _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_cpp _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_cpp _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_cpp _agn_leg_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agn_leg_detection_gencpp)
add_dependencies(agn_leg_detection_gencpp agn_leg_detection_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agn_leg_detection_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_eus(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_eus(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_eus(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agn_leg_detection
)

### Generating Services

### Generating Module File
_generate_module_eus(agn_leg_detection
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agn_leg_detection
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(agn_leg_detection_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(agn_leg_detection_generate_messages agn_leg_detection_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_eus _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_eus _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_eus _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_eus _agn_leg_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agn_leg_detection_geneus)
add_dependencies(agn_leg_detection_geneus agn_leg_detection_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agn_leg_detection_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_lisp(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_lisp(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_lisp(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agn_leg_detection
)

### Generating Services

### Generating Module File
_generate_module_lisp(agn_leg_detection
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agn_leg_detection
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(agn_leg_detection_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(agn_leg_detection_generate_messages agn_leg_detection_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_lisp _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_lisp _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_lisp _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_lisp _agn_leg_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agn_leg_detection_genlisp)
add_dependencies(agn_leg_detection_genlisp agn_leg_detection_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agn_leg_detection_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_nodejs(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_nodejs(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_nodejs(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agn_leg_detection
)

### Generating Services

### Generating Module File
_generate_module_nodejs(agn_leg_detection
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agn_leg_detection
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(agn_leg_detection_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(agn_leg_detection_generate_messages agn_leg_detection_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_nodejs _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_nodejs _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_nodejs _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_nodejs _agn_leg_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agn_leg_detection_gennodejs)
add_dependencies(agn_leg_detection_gennodejs agn_leg_detection_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agn_leg_detection_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_py(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_py(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agn_leg_detection
)
_generate_msg_py(agn_leg_detection
  "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agn_leg_detection
)

### Generating Services

### Generating Module File
_generate_module_py(agn_leg_detection
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agn_leg_detection
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(agn_leg_detection_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(agn_leg_detection_generate_messages agn_leg_detection_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/hashem.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_py _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/legmsg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_py _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Legs.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_py _agn_leg_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/agn_leg_detection/msg/Leg.msg" NAME_WE)
add_dependencies(agn_leg_detection_generate_messages_py _agn_leg_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agn_leg_detection_genpy)
add_dependencies(agn_leg_detection_genpy agn_leg_detection_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agn_leg_detection_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agn_leg_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agn_leg_detection
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(agn_leg_detection_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(agn_leg_detection_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(agn_leg_detection_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agn_leg_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agn_leg_detection
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(agn_leg_detection_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(agn_leg_detection_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(agn_leg_detection_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agn_leg_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agn_leg_detection
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(agn_leg_detection_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(agn_leg_detection_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(agn_leg_detection_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agn_leg_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agn_leg_detection
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(agn_leg_detection_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(agn_leg_detection_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(agn_leg_detection_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agn_leg_detection)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agn_leg_detection\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agn_leg_detection
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(agn_leg_detection_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(agn_leg_detection_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(agn_leg_detection_generate_messages_py std_msgs_generate_messages_py)
endif()
