get_filename_component(_ogg_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_ogg_root "${_ogg_root}/../../..")
get_filename_component(_ogg_root "${_ogg_root}" ABSOLUTE)

set(
  OGG_LIBRARIES
  ${_ogg_root}/lib/libogg.so
  CACHE INTERNAL "" FORCE
)

set(
  OGG_INCLUDE_DIRS
  ${_ogg_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(OGG)
