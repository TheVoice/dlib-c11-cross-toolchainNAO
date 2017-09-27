## Copyright (C) 2011 - 2012 Aldebaran Robotics

#
# This toolchain file to be used when NOT using qibuild.
# Do not edit. Do not change location
#


get_filename_component(_ROOT_DIR ${CMAKE_CURRENT_LIST_FILE} PATH)
include(${_ROOT_DIR}/cross-config.cmake)


#This is deprecated
set(OE_CROSS_BUILD ON)

# enable 1.10 backward compatibility when using an old bootstrap.cmake
set(TOOLCHAIN_DIR "" CACHE INTERNAL "" FORCE)
set(T001CHAIN_DIR "${OE_STAGE}/usr/share/cmake/Modules/qibuild/compat/t001chain/" CACHE INTERNAL "" FORCE)

find_package(qibuild)
