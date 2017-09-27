get_filename_component(_jpeg_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_jpeg_root "${_jpeg_root}/../../..")
get_filename_component(_jpeg_root "${_jpeg_root}" ABSOLUTE)

set(
  JPEG_LIBRARIES
  ${_jpeg_root}/lib/libjpeg.so
  CACHE INTERNAL "" FORCE
)

set(
  JPEG_INCLUDE_DIRS
  ${_jpeg_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(JPEG)
