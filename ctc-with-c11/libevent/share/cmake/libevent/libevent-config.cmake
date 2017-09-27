get_filename_component(_libevent_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_libevent_root "${_libevent_root}/../../..")
get_filename_component(_libevent_root "${_libevent_root}" ABSOLUTE)

set(LIBEVENT_LIBRARIES
  ${_libevent_root}/lib/libevent.so
  ${_libevent_root}/lib/libevent_core.so
  ${_libevent_root}/lib/libevent_pthreads.so
  CACHE INTERNAL "" FORCE
)

set(LIBEVENT_INCLUDE_DIRS
  ${_libevent_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(LIBEVENT_DEPENDS PTHREAD RT)
export_lib(LIBEVENT)
