get_filename_component(_sndfile_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_sndfile_root "${_sndfile_root}/../../..")
get_filename_component(_sndfile_root "${_sndfile_root}" ABSOLUTE)

set(SNDFILE_LIBRARIES
  ${_sndfile_root}/lib/libsndfile.so
  CACHE INTERNAL "" FORCE
)

set(SNDFILE_INCLUDE_DIRS
  ${_sndfile_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(SNDFILE_DEPENDS FLAC VORBIS OGG)
export_lib(SNDFILE)
