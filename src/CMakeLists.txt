file(GLOB_RECURSE SRC_FILES CONFIGURE_DEPENDS RELATIVE ${CMAKE_CURRENT_LIST_DIR} *.cpp)

foreach(ITEM IN LISTS SRC_FILES)
    string(REGEX REPLACE ".cpp" "" PROJ_NAME ${ITEM})
    message(STATUS "Building project:  ${PROJ_NAME}")
    add_executable(${PROJ_NAME} ${ITEM})
    target_link_libraries(${PROJ_NAME} PRIVATE project_options project_warnings pthread)
endforeach()