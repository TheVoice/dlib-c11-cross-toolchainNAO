get_filename_component(_flac_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_flac_root "${_flac_root}/../../..")
get_filename_component(_flac_root "${_flac_root}" ABSOLUTE)

set(
  FLAC_LIBRARIES
  ${_flac_root}/lib/libFLAC.so
  CACHE INTERNAL "" FORCE
)

set(
  FLAC_INCLUDE_DIRS
  ${_flac_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(FLAC)
