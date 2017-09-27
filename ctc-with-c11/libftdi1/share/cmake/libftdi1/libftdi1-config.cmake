get_filename_component(_ftdi1_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_ftdi1_root "${_ftdi1_root}/../../..")
get_filename_component(_ftdi1_root "${_ftdi1_root}" ABSOLUTE)

set(LIBFTDI1_LIBRARIES
  ${_ftdi1_root}/lib/libftdi1.so
  ${_ftdi1_root}/lib/libftdipp1.so
  CACHE INTERNAL "" FORCE
)

set(LIBFTDI1_INCLUDE_DIRS
  ${_ftdi1_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(LIBFTDI1_DEPENDS USB_1)
export_lib(LIBFTDI1)
