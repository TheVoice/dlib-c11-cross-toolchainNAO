get_filename_component(_glib2_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_glib2_root "${_glib2_root}/../../..")
get_filename_component(_glib2_root "${_glib2_root}" ABSOLUTE)

set(GLIB2_LIBRARIES
  ${_glib2_root}/lib/libglib-2.0.so
  CACHE INTERNAL "" FORCE
)

set(GLIB2_INCLUDE_DIRS
  ${_glib2_root}/include/glib-2.0
  ${_glib2_root}/lib/glib-2.0/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(GLIB2_DEPENDS PTHREAD RT FFI)
export_lib(GLIB2)
