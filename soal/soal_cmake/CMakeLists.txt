#[TODO] Implentasikan CMakeList di bawah ini
#izin ganti versi
cmake_minimum_required(VERSION 3.10)
project(MCU)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

add_executable(MyProgram
    src/main.cpp
    src/mcu_cam_controller.cpp
    src/mcu_walker.cpp
    src/mcu.cpp
)

target_include_directories(MyProgram PRIVATE include)

add_custom_target(run
    COMMAND ./MyProgram
    DEPENDS MyProgram
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)