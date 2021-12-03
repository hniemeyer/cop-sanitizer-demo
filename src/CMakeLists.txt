add_executable(invalid-index invalid-index.cpp)
target_link_libraries(invalid-index PRIVATE project_options project_warnings)
add_executable(uninit-array uninit-array.cpp)
target_link_libraries(uninit-array PRIVATE project_options project_warnings)