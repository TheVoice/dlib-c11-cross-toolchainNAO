get_filename_component(_tbb_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_tbb_root "${_tbb_root}/../../..")
get_filename_component(_tbb_root "${_tbb_root}" ABSOLUTE)

set(
  TBB_LIBRARIES
  ${_tbb_root}/lib/libtbb.so
  CACHE INTERNAL "" FORCE
)

set(
  TBB_INCLUDE_DIRS
  ${_tbb_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(TBB)
