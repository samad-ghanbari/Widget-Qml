# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/Widget-Qml_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/Widget-Qml_autogen.dir/ParseCache.txt"
  "Widget-Qml_autogen"
  )
endif()
