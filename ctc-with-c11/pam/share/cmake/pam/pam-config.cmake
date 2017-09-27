get_filename_component(_pam_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_pam_root "${_pam_root}/../../..")
get_filename_component(_pam_root "${_pam_root}" ABSOLUTE)

set(
  PAM_LIBRARIES
  ${_pam_root}/lib/libpam.so
  ${_pam_root}/lib/libpamc.so
  ${_pam_root}/lib/libpam_misc.so
  CACHE INTERNAL "" FORCE
)

set(
  PAM_INCLUDE_DIRS
  ${_pam_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(PAM)
