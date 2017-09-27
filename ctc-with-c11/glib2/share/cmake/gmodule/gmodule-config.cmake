get_filename_component(_gmodule_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_gmodule_root "${_gmodule_root}/../../..")
get_filename_component(_gmodule_root "${_gmodule_root}" ABSOLUTE)

set(GMODULE_LIBRARIES
  ${_gmodule_root}/lib/libgmodule-2.0.so
  CACHE INTERNAL "" FORCE
)

set(GMODULE_INCLUDE_DIRS
  ${_gmodule_root}/include/glib-2.0
  ${_gmodule_root}/lib/glib-2.0/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(GMODULE_DEPENDS GLIB2 DL)
export_lib(GMODULE)
