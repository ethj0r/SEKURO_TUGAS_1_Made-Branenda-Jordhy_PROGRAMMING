# Install script for directory: /Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/chatSystem

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/install/chatSystem")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/jae/miniconda3/envs/ros2/bin/llvm-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/chatSystem" TYPE EXECUTABLE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/talker")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/chatSystem/talker" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/chatSystem/talker")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Users/jae/miniconda3/envs/ros2/bin/arm64-apple-darwin20.0.0-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/chatSystem/talker")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/CMakeFiles/talker.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/chatSystem" TYPE EXECUTABLE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/listener")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/chatSystem/listener" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/chatSystem/listener")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Users/jae/miniconda3/envs/ros2/bin/arm64-apple-darwin20.0.0-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/chatSystem/listener")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/CMakeFiles/listener.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/chatSystem")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/chatSystem")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem/environment" TYPE FILE FILES "/Users/jae/miniconda3/envs/ros2/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem/environment" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem/environment" TYPE FILE FILES "/Users/jae/miniconda3/envs/ros2/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem/environment" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_environment_hooks/path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_environment_hooks/local_setup.bash")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_environment_hooks/local_setup.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_environment_hooks/package.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_index/share/ament_index/resource_index/packages/chatSystem")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem/cmake" TYPE FILE FILES
    "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_core/chatSystemConfig.cmake"
    "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/ament_cmake_core/chatSystemConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/chatSystem" TYPE FILE FILES "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/chatSystem/package.xml")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/jae/Developer/URO/Sekuro/SEKURO_TUGAS_1_Made-Branenda-Jordhy_PROGRAMMING/src/ros_soal_1/sekuro_ws/build/chatSystem/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
