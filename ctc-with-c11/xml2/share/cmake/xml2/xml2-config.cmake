get_filename_component(_xml2_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_xml2_root "${_xml2_root}/../../..")
get_filename_component(_xml2_root "${_xml2_root}" ABSOLUTE)

set(XML2_LIBRARIES
  ${_xml2_root}/lib/libxml2.so
  CACHE INTERNAL "" FORCE
)

set(XML2_INCLUDE_DIRS
  ${_xml2_root}/include/libxml2
  CACHE INTERNAL "" FORCE
)

export_lib(XML2)
