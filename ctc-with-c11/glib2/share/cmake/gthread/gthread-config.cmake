get_filename_component(_gthread_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_gthread_root "${_gthread_root}/../../..")
get_filename_component(_gthread_root "${_gthread_root}" ABSOLUTE)

set(GTHREAD_LIBRARIES
  ${_gthread_root}/lib/libgthread-2.0.so
  CACHE INTERNAL "" FORCE
)

set(GTHREAD_INCLUDE_DIRS
  ${_gthread_root}/include/glib-2.0
  ${_gthread_root}/lib/glib-2.0/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(GTHREAD_DEPENDS GLIB2 PTHREAD RT)
export_lib(GTHREAD)
