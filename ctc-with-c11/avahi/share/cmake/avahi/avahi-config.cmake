get_filename_component(_avahi_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_avahi_root "${_avahi_root}/../../..")
get_filename_component(_avahi_root "${_avahi_root}" ABSOLUTE)

set(AVAHI_LIBRARIES
  ${_avahi_root}/lib/libavahi-common.so
  ${_avahi_root}/lib/libavahi-client.so
  CACHE INTERNAL "" FORCE
)

set(AVAHI_INCLUDE_DIRS
  ${_avahi_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(AVAHI_DEPENDS DBUS-1)
export_lib(AVAHI)


