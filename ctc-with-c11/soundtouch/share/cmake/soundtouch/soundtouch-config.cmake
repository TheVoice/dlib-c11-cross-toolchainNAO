get_filename_component(_soundtouch_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_soundtouch_root "${_soundtouch_root}/../../..")
get_filename_component(_soundtouch_root "${_soundtouch_root}" ABSOLUTE)

set(SOUNDTOUCH_LIBRARIES ${_soundtouch_root}/lib/libSoundTouch.so
  CACHE INTERNAL "" FORCE)
set(SOUNDTOUCH_INCLUDE_DIRS ${_soundtouch_root}/include
  CACHE INTERNAL "" FORCE
)
export_lib(SOUNDTOUCH)
