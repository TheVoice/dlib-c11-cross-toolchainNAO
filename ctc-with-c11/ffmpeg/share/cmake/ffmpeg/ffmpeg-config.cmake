get_filename_component(_ffmpeg_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_ffmpeg_root "${_ffmpeg_root}/../../..")
get_filename_component(_ffmpeg_root "${_ffmpeg_root}" ABSOLUTE)

set(
  FFMPEG_LIBRARIES
  ${_ffmpeg_root}/lib/libavcodec.so
  ${_ffmpeg_root}/lib/libavformat.so
  ${_ffmpeg_root}/lib/libavutil.so
  ${_ffmpeg_root}/lib/libswscale.so
  CACHE INTERNAL "" FORCE
)

set(
  FFMPEG_INCLUDE_DIRS
  ${_ffmpeg_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(FFMPEG_DEPENDS BZIP2)
export_lib(FFMPEG)
