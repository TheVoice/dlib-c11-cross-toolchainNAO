get_filename_component(_c_ares_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_c_ares_root "${_c_ares_root}/../../..")
get_filename_component(_c_ares_root "${_c_ares_root}" ABSOLUTE)

set(
  C_ARES_LIBRARIES
  ${_c_ares_root}/lib/libcares.so
  CACHE INTERNAL "" FORCE
)

set(
  C_ARES_INCLUDE_DIRS
  ${_c_ares_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(C_ARES)
