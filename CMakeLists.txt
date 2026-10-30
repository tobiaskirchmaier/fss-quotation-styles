cmake_minimum_required(VERSION 4.3)

project(
        FSSStyleInstaller
        VERSION 1.0.1
        LANGUAGES CXX
)

if (MSVC)
    add_compile_options(/utf-8)
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(FSSStyleInstaller WIN32
        installer/main.cpp
        installer/resource.rc
)

target_link_libraries(FSSStyleInstaller PRIVATE
        comctl32
)