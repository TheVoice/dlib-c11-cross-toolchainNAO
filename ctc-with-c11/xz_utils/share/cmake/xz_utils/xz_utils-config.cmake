get_filename_component(_xz_utils_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_xz_utils_root "${_xz_utils_root}/../../..")
get_filename_component(_xz_utils_root "${_xz_utils_root}" ABSOLUTE)

set(
  XZ_UTILS_LIBRARIES
  ${_xz_utils_root}/lib/liblzma.so
  CACHE INTERNAL "" FORCE
)

set(
  XZ_UTILS_INCLUDE_DIRS
  ${_xz_utils_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(XZ_UTILS)
