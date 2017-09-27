get_filename_component(_dbus_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_dbus_root "${_dbus_root}/../../..")
get_filename_component(_dbus_root "${_dbus_root}" ABSOLUTE)

set(
  DBUS-1_LIBRARIES
  ${_dbus_root}/lib/libdbus-1.so
  CACHE INTERNAL "" FORCE
)

set(
  DBUS-1_INCLUDE_DIRS
  ${_dbus_root}/include/dbus-1.0
  ${_dbus_root}/lib/dbus-1.0/include
  CACHE INTERNAL "" FORCE
)

export_lib(DBUS-1)


