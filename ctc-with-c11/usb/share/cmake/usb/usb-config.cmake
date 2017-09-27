get_filename_component(_usb_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_usb_root "${_usb_root}/../../..")
get_filename_component(_usb_root "${_usb_root}" ABSOLUTE)

set(
  USB_LIBRARIES
  ${_usb_root}/lib/libusb.so
  ${_usb_root}/lib/libusbpp.so
  CACHE INTERNAL "" FORCE
)

set(
  USB_INCLUDE_DIRS
  ${_usb_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(USB)
