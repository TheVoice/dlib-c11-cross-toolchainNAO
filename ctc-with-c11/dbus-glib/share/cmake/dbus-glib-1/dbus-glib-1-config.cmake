get_filename_component(_dbus_glib_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_dbus_glib_root "${_dbus_glib_root}/../../..")
get_filename_component(_dbus_glib_root "${_dbus_glib_root}" ABSOLUTE)

set(
  DBUS-GLIB-1_LIBRARIES
  ${_dbus_glib_root}/lib/libdbus-glib-1.so
  CACHE INTERNAL "" FORCE
)

set(
  DBUS-GLIB-1_INCLUDE_DIRS
  ${_dbus_glib_root}/include/dbus-1.0
  CACHE INTERNAL "" FORCE
)

export_lib(DBUS-GLIB-1)


