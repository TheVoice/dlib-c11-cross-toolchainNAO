get_filename_component(_lircclient_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_lircclient_root "${_lircclient_root}/../../..")
get_filename_component(_lircclient_root "${_lircclient_root}" ABSOLUTE)

set(LIRCCLIENT_LIBRARIES
   ${_lircclient_root}/lib/liblirc_client.so
  CACHE INTERNAL "" FORCE
)

set(LIRCCLIENT_INCLUDE_DIRS
  ${_lircclient_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(LIRCCLIENT)
