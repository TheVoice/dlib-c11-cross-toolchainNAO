get_filename_component(_archive_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_archive_root "${_archive_root}/../../..")
get_filename_component(_archive_root "${_archive_root}" ABSOLUTE)

set(
  ARCHIVE_LIBRARIES
  ${_archive_root}/lib/libarchive.so
  CACHE INTERNAL "" FORCE
)

set(
  ARCHIVE_INCLUDE_DIRS
  ${_archive_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(ARCHIVE_DEPENDS XML2 ZLIB ACL XZ_UTILS BZIP2 OPENSSL)
export_lib(ARCHIVE)
