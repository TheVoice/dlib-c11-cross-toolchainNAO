get_filename_component(_gstreamer_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_gstreamer_root "${_gstreamer_root}/../../..")
get_filename_component(_gstreamer_root "${_gstreamer_root}" ABSOLUTE)

set(GSTREAMER_LIBRARIES
  ${_gstreamer_root}/lib/libgstreamer-0.10.so
  ${_gstreamer_root}/lib/libgstbase-0.10.so
  ${_gstreamer_root}/lib/libgstapp-0.10.so
  ${_gstreamer_root}/lib/libgstvideo-0.10.so
  CACHE INTERNAL "" FORCE
)

set(GSTREAMER_INCLUDE_DIRS
  ${_gstreamer_root}/include/gstreamer-0.10
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(GSTREAMER_DEPENDS GTHREAD GMODULE GOBJECT XML2)
export_lib(GSTREAMER)
