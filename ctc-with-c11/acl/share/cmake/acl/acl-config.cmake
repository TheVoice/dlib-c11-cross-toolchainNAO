get_filename_component(_acl_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_acl_root "${_acl_root}/../../..")
get_filename_component(_acl_root "${_acl_root}" ABSOLUTE)

set(
  ACL_LIBRARIES
  ${_acl_root}/lib/libacl.so
  CACHE INTERNAL "" FORCE
)

set(
  ACL_INCLUDE_DIRS
  ${_acl_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(ACL_DEPENDS ATTR)
export_lib(ACL)
