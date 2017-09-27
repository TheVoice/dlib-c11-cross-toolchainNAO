get_filename_component(_png_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_png_root "${_png_root}/../../..")
get_filename_component(_png_root "${_png_root}" ABSOLUTE)

set(
  PNG_LIBRARIES
  ${_png_root}/lib/libpng.so
  CACHE INTERNAL "" FORCE
)

set(
  PNG_INCLUDE_DIRS
  ${_png_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(PNG)
