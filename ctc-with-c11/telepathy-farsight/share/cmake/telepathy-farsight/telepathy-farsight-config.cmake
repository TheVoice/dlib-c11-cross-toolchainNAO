get_filename_component(_telepathy_farsight_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_telepathy_farsight_root "${_telepathy_farsight_root}/../../..")
get_filename_component(_telepathy_farsight_root ${_telepathy_farsight_root} ABSOLUTE)
set(TELEPATHY-FARSIGHT_LIBRARIES
  ${_telepathy_farsight_root}/lib/libtelepathy-farsight.so
  CACHE INTERNAL "" FORCE
)

set(TELEPATHY-FARSIGHT_INCLUDE_DIRS
  ${_telepathy_farsight_root}/include/telepathy-1.0
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(TELEPATHY-FARSIGHT_DEPENDS 
  TELEPATHY-GLIB
  GSTREAMER-FARSIGHT
  DBUS-GLIB-1)
export_lib(TELEPATHY-FARSIGHT)

