get_filename_component(_v4l_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_v4l_root "${_v4l_root}/../../..")
get_filename_component(_v4l_root "${_v4l_root}" ABSOLUTE)

set(
  V4L_LIBRARIES
  ${_v4l_root}/lib/libv4l1.so
  ${_v4l_root}/lib/libv4l2.so
  ${_v4l_root}/lib/libv4lconvert.so
  CACHE INTERNAL "" FORCE
)

set(
  V4L_INCLUDE_DIRS
  ${_v4l_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(V4L)
