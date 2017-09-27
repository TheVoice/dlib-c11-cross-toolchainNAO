get_filename_component(_alsa_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_alsa_root "${_alsa_root}/../../..")
get_filename_component(_alsa_root "${_alsa_root}" ABSOLUTE)

set(
  ALSA_LIBRARIES
  ${_alsa_root}/lib/libasound.so
  CACHE INTERNAL "" FORCE
)

set(
  ALSA_INCLUDE_DIRS
  ${_alsa_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(ALSA)
