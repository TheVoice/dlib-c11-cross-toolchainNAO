get_filename_component(_udev_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_udev_root "${_udev_root}/../../..")
get_filename_component(_udev_root "${_udev_root}" ABSOLUTE)

set(UDEV_LIBRARIES ${_udev_root}/lib/libudev.so
  CACHE INTERNAL "" FORCE)
set(UDEV_INCLUDE_DIRS ${_udev_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(UDEV)
