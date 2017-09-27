get_filename_component(_openni2_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_openni2_root "${_openni2_root}/../../..")
get_filename_component(_openni2_root "${_openni2_root}" ABSOLUTE)

set(OPENNI2_LIBRARIES
  ${_openni2_root}/lib/libOpenNI2.so
  CACHE INTERNAL "" FORCE
)

set(OPENNI2_INCLUDE_DIRS
  ${_openni2_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(OPENNI2_DEPENDS JPEG UDEV USB_1)
export_lib(OPENNI2)
