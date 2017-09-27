get_filename_component(_gio_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_gio_root "${_gio_root}/../../..")
get_filename_component(_gio_root "${_gio_root}" ABSOLUTE)

set(GIO_LIBRARIES
  ${_gio_root}/lib/libgio-2.0.so
  CACHE INTERNAL "" FORCE
)

set(GIO_INCLUDE_DIRS
  ${_gio_root}/include/glib-2.0
  ${_gio_root}/lib/glib-2.0/include
  ${_gio_root}/include/gio-unix-2.0
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(GIO_DEPENDS GOBJECT GMODULE ZLIB PTHREAD GLIB2)
export_lib(GIO)
