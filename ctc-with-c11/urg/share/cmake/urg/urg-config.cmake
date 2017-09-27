get_filename_component(_urg_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_urg_root "${_urg_root}/../../..")
get_filename_component(_urg_root "${_urg_root}" ABSOLUTE)

set(
  URG_LIBRARIES
  ${_urg_root}/lib/libc_urg.so
  ${_urg_root}/lib/libc_urg_connection.so
  ${_urg_root}/lib/libc_urg_system.so
  CACHE INTERNAL "" FORCE
)

set(
  URG_INCLUDE_DIRS
  ${_urg_root}/include/urg
  ${_urg_root}/include/c_urg
  CACHE INTERNAL "" FORCE
)

export_lib(URG)
