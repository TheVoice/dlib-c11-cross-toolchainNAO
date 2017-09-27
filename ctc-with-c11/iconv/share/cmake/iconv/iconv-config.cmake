get_filename_component(_iconv_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_iconv_root "${_iconv_root}/../../..")
get_filename_component(_iconv_root "${_iconv_root}" ABSOLUTE)

set(ICONV_INCLUDE_DIRS
  ${_iconv_root}/include
  CACHE INTERNAL "" FORCE
)
export_header(ICONV)
