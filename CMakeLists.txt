# Project
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(tenv)

# Program
configure_file(src/tenv ${CMAKE_CURRENT_BINARY_DIR}/tenv COPYONLY)
install(PROGRAMS src/tenv DESTINATION bin)

# Manuals
install(FILES src/tenv.1 DESTINATION share/man/man1)

# Tests
enable_testing()
configure_file(tests/test001 ${CMAKE_CURRENT_BINARY_DIR}/test001 COPYONLY)
add_test(test001 "${PROJECT_BINARY_DIR}/test001")
set_tests_properties(test001 PROPERTIES RUN_SERIAL TRUE)
