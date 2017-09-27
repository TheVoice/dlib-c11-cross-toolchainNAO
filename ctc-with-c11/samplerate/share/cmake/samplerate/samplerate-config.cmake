get_filename_component(_samplerate_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_samplerate_root "${_samplerate_root}/../../..")
get_filename_component(_samplerate_root "${_samplerate_root}" ABSOLUTE)

set(SAMPLERATE_LIBRARIES ${_samplerate_root}/lib/libsamplerate.so
  CACHE INTERNAL "" FORCE)
set(SAMPLERATE_INCLUDE_DIRS ${_samplerate_root}/include
  CACHE INTERNAL "" FORCE
)
export_lib(SAMPLERATE)
