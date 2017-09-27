get_filename_component(_liburcu_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_liburcu_root "${_liburcu_root}/../../..")
get_filename_component(_liburcu_root "${_liburcu_root}" ABSOLUTE)

set(
  LIBURCU_LIBRARIES
  ${_liburcu_root}/lib/liburcu-bp.so
  ${_liburcu_root}/lib/liburcu-cds.so
  ${_liburcu_root}/lib/liburcu-common.so
  ${_liburcu_root}/lib/liburcu-mb.so
  ${_liburcu_root}/lib/liburcu-qsbr.so
  ${_liburcu_root}/lib/liburcu-signal.so
  ${_liburcu_root}/lib/liburcu.so
  CACHE INTERNAL "" FORCE
)

set(
  LIBURCU_INCLUDE_DIRS
  ${_liburcu_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(LIBURCU_DEPENDS PTHREAD)
export_lib(LIBURCU)

