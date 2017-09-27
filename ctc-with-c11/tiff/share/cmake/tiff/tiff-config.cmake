get_filename_component(_tiff_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_tiff_root "${_tiff_root}/../../..")
get_filename_component(_tiff_root "${_tiff_root}" ABSOLUTE)

set(
  TIFF_LIBRARIES
  ${_tiff_root}/lib/libtiff.so
  CACHE INTERNAL "" FORCE
)

set(
  TIFF_INCLUDE_DIRS
  ${_tiff_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(TIFF)
