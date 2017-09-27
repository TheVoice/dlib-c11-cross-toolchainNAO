set(_root "${CMAKE_CURRENT_LIST_DIR}/../../..")
get_filename_component(_root ${_root} ABSOLUTE)

set(FUSE_LIBRARIES
  ${_root}/lib/libfuse.so
  CACHE INTERNAL "" FORCE
)

set(FUSE_INCLUDE_DIRS
  ${_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(FUSE)
