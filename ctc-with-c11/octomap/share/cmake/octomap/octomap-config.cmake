get_filename_component(_octomap_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_octomap_root "${_octomap_root}/../../..")
get_filename_component(_octomap_root "${_octomap_root}" ABSOLUTE)

set(
  OCTOMAP_LIBRARIES
  ${_octomap_root}/lib/libdynamicedt3d.so
  ${_octomap_root}/lib/liboctomap.so
  ${_octomap_root}/lib/liboctomath.so
  CACHE INTERNAL "" FORCE
)

set(
  OCTOMAP_INCLUDE_DIRS
  ${_octomap_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(OCTOMAP)
