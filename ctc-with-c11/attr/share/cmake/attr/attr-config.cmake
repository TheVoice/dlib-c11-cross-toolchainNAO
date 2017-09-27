get_filename_component(_attr_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_attr_root "${_attr_root}/../../..")
get_filename_component(_attr_root "${_attr_root}" ABSOLUTE)

set(
  ATTR_LIBRARIES
  ${_attr_root}/lib/libattr.so
  CACHE INTERNAL "" FORCE
)

set(
  ATTR_INCLUDE_DIRS
  ${_attr_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(ATTR)

