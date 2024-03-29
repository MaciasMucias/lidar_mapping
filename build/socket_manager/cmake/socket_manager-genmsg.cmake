# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "socket_manager: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(socket_manager_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv" NAME_WE)
add_custom_target(_socket_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "socket_manager" "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(socket_manager
  "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/socket_manager
)

### Generating Module File
_generate_module_cpp(socket_manager
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/socket_manager
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(socket_manager_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(socket_manager_generate_messages socket_manager_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv" NAME_WE)
add_dependencies(socket_manager_generate_messages_cpp _socket_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(socket_manager_gencpp)
add_dependencies(socket_manager_gencpp socket_manager_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS socket_manager_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(socket_manager
  "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/socket_manager
)

### Generating Module File
_generate_module_eus(socket_manager
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/socket_manager
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(socket_manager_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(socket_manager_generate_messages socket_manager_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv" NAME_WE)
add_dependencies(socket_manager_generate_messages_eus _socket_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(socket_manager_geneus)
add_dependencies(socket_manager_geneus socket_manager_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS socket_manager_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(socket_manager
  "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/socket_manager
)

### Generating Module File
_generate_module_lisp(socket_manager
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/socket_manager
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(socket_manager_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(socket_manager_generate_messages socket_manager_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv" NAME_WE)
add_dependencies(socket_manager_generate_messages_lisp _socket_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(socket_manager_genlisp)
add_dependencies(socket_manager_genlisp socket_manager_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS socket_manager_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(socket_manager
  "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/socket_manager
)

### Generating Module File
_generate_module_nodejs(socket_manager
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/socket_manager
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(socket_manager_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(socket_manager_generate_messages socket_manager_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv" NAME_WE)
add_dependencies(socket_manager_generate_messages_nodejs _socket_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(socket_manager_gennodejs)
add_dependencies(socket_manager_gennodejs socket_manager_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS socket_manager_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(socket_manager
  "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/socket_manager
)

### Generating Module File
_generate_module_py(socket_manager
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/socket_manager
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(socket_manager_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(socket_manager_generate_messages socket_manager_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plugit/lidar_mapping/src/socket_manager/srv/GetDistanceFromWall.srv" NAME_WE)
add_dependencies(socket_manager_generate_messages_py _socket_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(socket_manager_genpy)
add_dependencies(socket_manager_genpy socket_manager_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS socket_manager_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/socket_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/socket_manager
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/socket_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/socket_manager
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/socket_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/socket_manager
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/socket_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/socket_manager
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/socket_manager)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/socket_manager\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/socket_manager
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
