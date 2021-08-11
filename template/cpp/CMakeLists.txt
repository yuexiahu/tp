cmake_minimum_required(VERSION 3.1)

project(main)

set(CMAKE_CXX_STANDARD 14)

file(GLOB HEADER_FILES "*.h" "*.hpp")
file(GLOB SOURCE_FILES "*.c" "*.cpp")

add_executable(${PROJECT_NAME} ${HEADER_FILES} ${SOURCE_FILES})

add_custom_target(run ./${PROJECT_NAME} || echo "Abnormal exit"
    DEPENDS ${PROJECT_NAME}
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    COMMENT "run binaray"
    )
