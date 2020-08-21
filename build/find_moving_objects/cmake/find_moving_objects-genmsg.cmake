# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "find_moving_objects: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ifind_moving_objects:/home/plugit/lidar_mapping/src/find_moving_objects/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(find_moving_objects_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg" NAME_WE)
add_custom_target(_find_moving_objects_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "find_moving_objects" "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg" "sensor_msgs/LaserScan:std_msgs/Header"
)

get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg" NAME_WE)
add_custom_target(_find_moving_objects_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "find_moving_objects" "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg" NAME_WE)
add_custom_target(_find_moving_objects_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "find_moving_objects" "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg" "sensor_msgs/PointField:std_msgs/Header:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg" NAME_WE)
add_custom_target(_find_moving_objects_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "find_moving_objects" "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg" "find_moving_objects/MovingObject:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/find_moving_objects
)
_generate_msg_cpp(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/find_moving_objects
)
_generate_msg_cpp(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/find_moving_objects
)
_generate_msg_cpp(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/find_moving_objects
)

### Generating Services

### Generating Module File
_generate_module_cpp(find_moving_objects
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/find_moving_objects
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(find_moving_objects_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(find_moving_objects_generate_messages find_moving_objects_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_cpp _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_cpp _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_cpp _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_cpp _find_moving_objects_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(find_moving_objects_gencpp)
add_dependencies(find_moving_objects_gencpp find_moving_objects_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS find_moving_objects_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/find_moving_objects
)
_generate_msg_eus(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/find_moving_objects
)
_generate_msg_eus(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/find_moving_objects
)
_generate_msg_eus(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/find_moving_objects
)

### Generating Services

### Generating Module File
_generate_module_eus(find_moving_objects
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/find_moving_objects
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(find_moving_objects_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(find_moving_objects_generate_messages find_moving_objects_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_eus _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_eus _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_eus _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_eus _find_moving_objects_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(find_moving_objects_geneus)
add_dependencies(find_moving_objects_geneus find_moving_objects_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS find_moving_objects_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/find_moving_objects
)
_generate_msg_lisp(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/find_moving_objects
)
_generate_msg_lisp(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/find_moving_objects
)
_generate_msg_lisp(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/find_moving_objects
)

### Generating Services

### Generating Module File
_generate_module_lisp(find_moving_objects
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/find_moving_objects
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(find_moving_objects_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(find_moving_objects_generate_messages find_moving_objects_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_lisp _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_lisp _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_lisp _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_lisp _find_moving_objects_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(find_moving_objects_genlisp)
add_dependencies(find_moving_objects_genlisp find_moving_objects_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS find_moving_objects_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/find_moving_objects
)
_generate_msg_nodejs(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/find_moving_objects
)
_generate_msg_nodejs(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/find_moving_objects
)
_generate_msg_nodejs(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/find_moving_objects
)

### Generating Services

### Generating Module File
_generate_module_nodejs(find_moving_objects
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/find_moving_objects
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(find_moving_objects_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(find_moving_objects_generate_messages find_moving_objects_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_nodejs _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_nodejs _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_nodejs _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_nodejs _find_moving_objects_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(find_moving_objects_gennodejs)
add_dependencies(find_moving_objects_gennodejs find_moving_objects_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS find_moving_objects_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/find_moving_objects
)
_generate_msg_py(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/find_moving_objects
)
_generate_msg_py(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/find_moving_objects
)
_generate_msg_py(find_moving_objects
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/find_moving_objects
)

### Generating Services

### Generating Module File
_generate_module_py(find_moving_objects
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/find_moving_objects
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(find_moving_objects_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(find_moving_objects_generate_messages find_moving_objects_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/LaserScanArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_py _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObject.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_py _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_py _find_moving_objects_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plugit/lidar_mapping/src/find_moving_objects/msg/MovingObjectArray.msg" NAME_WE)
add_dependencies(find_moving_objects_generate_messages_py _find_moving_objects_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(find_moving_objects_genpy)
add_dependencies(find_moving_objects_genpy find_moving_objects_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS find_moving_objects_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/find_moving_objects)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/find_moving_objects
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(find_moving_objects_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(find_moving_objects_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/find_moving_objects)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/find_moving_objects
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(find_moving_objects_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(find_moving_objects_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/find_moving_objects)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/find_moving_objects
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(find_moving_objects_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(find_moving_objects_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/find_moving_objects)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/find_moving_objects
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(find_moving_objects_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(find_moving_objects_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/find_moving_objects)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/find_moving_objects\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/find_moving_objects
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(find_moving_objects_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(find_moving_objects_generate_messages_py sensor_msgs_generate_messages_py)
endif()
