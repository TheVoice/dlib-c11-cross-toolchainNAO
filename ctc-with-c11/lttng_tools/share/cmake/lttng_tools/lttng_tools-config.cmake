get_filename_component(_lttng_tools_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_lttng_tools_root "${_lttng_tools_root}/../../..")
get_filename_component(_lttng_tools_root "${_lttng_tools_root}" ABSOLUTE)

set(
  LTTNG_TOOLS_LIBRARIES
  ${_lttng_tools_root}/lib/liblttng-ctl.so
  CACHE INTERNAL "" FORCE
)

set(
  LTTNG_TOOLS_INCLUDE_DIRS
  ${_lttng_tools_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(LTTNG_TOOLS_DEPENDS LIBURCU RT PTHREAD)
export_lib(LTTNG_TOOLS)


