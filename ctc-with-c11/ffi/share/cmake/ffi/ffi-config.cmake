get_filename_component(_ffi_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_ffi_root "${_ffi_root}/../../..")
get_filename_component(_ffi_root "${_ffi_root}" ABSOLUTE)

set(
  FFI_LIBRARIES
  ${_ffi_root}/lib/libffi.so
  CACHE INTERNAL "" FORCE
)

set(
  FFI_INCLUDE_DIRS
  ${_ffi_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(FFI)
