get_filename_component(_telepathy_glib_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_telepathy_glib_root "${_telepathy_glib_root}/../../..")
get_filename_component(_telepathy_glib_root ${_telepathy_glib_root} ABSOLUTE)
set(TELEPATHY-GLIB_LIBRARIES
  ${_telepathy_glib_root}/lib/libtelepathy-glib.so
  CACHE INTERNAL "" FORCE
)

set(TELEPATHY-GLIB_INCLUDE_DIRS
  ${_telepathy_glib_root}/include/telepathy-1.0
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(TELEPATHY-GLIB_DEPENDS
  DBUS-1
  DBUS-GLIB-1
  GSTREAMER-FARSIGHT
  GIO
  GOBJECT)
export_lib(TELEPATHY-GLIB)

