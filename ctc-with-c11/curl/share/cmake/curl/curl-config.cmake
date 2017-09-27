get_filename_component(_curl_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_curl_root "${_curl_root}/../../..")
get_filename_component(_curl_root "${_curl_root}" ABSOLUTE)

set(
  CURL_LIBRARIES
  ${_curl_root}/lib/libcurl.so
  CACHE INTERNAL "" FORCE
)

set(
  CURL_INCLUDE_DIRS
  ${_curl_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(CURL_DEPENDS OPENSSL C_ARES)
export_lib(CURL)
