get_filename_component(_zlib_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_zlib_root "${_zlib_root}/../../..")
get_filename_component(_zlib_root "${_zlib_root}" ABSOLUTE)

set(
  ZLIB_LIBRARIES
  ${_zlib_root}/lib/libz.so
  CACHE INTERNAL "" FORCE
)

set(
  ZLIB_INCLUDE_DIRS
  ${_zlib_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(ZLIB)

