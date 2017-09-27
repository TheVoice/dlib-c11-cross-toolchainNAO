get_filename_component(_pulseaudio_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_pulseaudio_root "${_pulseaudio_root}/../../..")
get_filename_component(_pulseaudio_root "${_pulseaudio_root}" ABSOLUTE)

set(
  PULSEAUDIO_LIBRARIES
  ${_pulseaudio_root}/lib/libpulse.so
  CACHE INTERNAL "" FORCE
)

set(
  PULSEAUDIO_INCLUDE_DIRS
  ${_pulseaudio_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(PULSEAUDIO)
