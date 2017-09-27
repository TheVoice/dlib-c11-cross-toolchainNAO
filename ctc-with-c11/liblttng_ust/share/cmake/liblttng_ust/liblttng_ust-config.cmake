get_filename_component(_liblttng_ust_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_liblttng_ust_root "${_liblttng_ust_root}/../../..")
get_filename_component(_liblttng_ust_root "${_liblttng_ust_root}" ABSOLUTE)

set(
  LIBLTTNG_UST_LIBRARIES
  ${_liblttng_ust_root}/lib/liblttng-ust-ctl.so
  ${_liblttng_ust_root}/lib/liblttng-ust-cyg-profile-fast.so
  ${_liblttng_ust_root}/lib/liblttng-ust-cyg-profile.so
  ${_liblttng_ust_root}/lib/liblttng-ust-dl.so
  ${_liblttng_ust_root}/lib/liblttng-ust-fork.so
  ${_liblttng_ust_root}/lib/liblttng-ust-libc-wrapper.so
  ${_liblttng_ust_root}/lib/liblttng-ust-pthread-wrapper.so
  ${_liblttng_ust_root}/lib/liblttng-ust.so
  ${_liblttng_ust_root}/lib/liblttng-ust-tracepoint.so
  CACHE INTERNAL "" FORCE
)

set(
  LIBLTTNG_UST_INCLUDE_DIRS
  ${_liblttng_ust_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(LIBLTTNG_UST_DEPENDS LIBURCU RT DL PTHREAD)
export_lib(LIBLTTNG_UST)

