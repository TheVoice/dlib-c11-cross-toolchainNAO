get_filename_component(_python_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_python_root "${_python_root}/../../..")
get_filename_component(_python_root ${_python_root} ABSOLUTE)

set(PYTHON_LIBRARIES
  ${_python_root}/lib/libpython2.7.so
  CACHE INTERNAL "" FORCE
)

set(PYTHON_INCLUDE_DIRS
  ${_python_root}/include/python2.7
  CACHE INTERNAL "" FORCE
)

export_lib(PYTHON)
