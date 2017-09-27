get_filename_component(_gobject_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_gobject_root "${_gobject_root}/../../..")
get_filename_component(_gobject_root "${_gobject_root}" ABSOLUTE)

set(GOBJECT_LIBRARIES
  ${_gobject_root}/lib/libgobject-2.0.so
  CACHE INTERNAL "" FORCE
)

set(GOBJECT_INCLUDE_DIRS
  ${_gobject_root}/include/glib-2.0
  ${_gobject_root}/lib/glib-2.0/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(GOBJECT_DEPENDS GTHREAD GLIB2 FFI)
export_lib(GOBJECT)
