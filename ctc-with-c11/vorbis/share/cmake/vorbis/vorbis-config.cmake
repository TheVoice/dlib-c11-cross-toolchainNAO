get_filename_component(_vorbis_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_vorbis_root "${_vorbis_root}/../../..")
get_filename_component(_vorbis_root "${_vorbis_root}" ABSOLUTE)

set(
  VORBIS_LIBRARIES
  ${_vorbis_root}/lib/libvorbis.so
  ${_vorbis_root}/lib/libvorbisenc.so
  CACHE INTERNAL "" FORCE
)

set(
  VORBIS_INCLUDE_DIRS
  ${_vorbis_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(VORBIS)
