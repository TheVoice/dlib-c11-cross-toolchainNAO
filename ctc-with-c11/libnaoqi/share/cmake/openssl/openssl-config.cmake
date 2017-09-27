get_filename_component(_openssl_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_openssl_root "${_openssl_root}/../../..")
get_filename_component(_openssl_root "${_openssl_root}" ABSOLUTE)

set(OPENSSL_LIBRARIES
  ${_openssl_root}/lib/libcrypto.so
  ${_openssl_root}/lib/libssl.so
  CACHE INTERNAL "" FORCE
)

set(OPENSSL_INCLUDE_DIRS
  ${_openssl_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(OPENSSL)
