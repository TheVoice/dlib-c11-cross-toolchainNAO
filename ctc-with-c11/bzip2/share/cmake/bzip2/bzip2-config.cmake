get_filename_component(_bzip2_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_bzip2_root "${_bzip2_root}/../../..")
get_filename_component(_bzip2_root "${_bzip2_root}" ABSOLUTE)

set(
  BZIP2_LIBRARIES
  ${_bzip2_root}/lib/libbz2.so
  CACHE INTERNAL "" FORCE
)

set(
  BZIP2_INCLUDE_DIRS
  ${_bzip2_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(BZIP2)

