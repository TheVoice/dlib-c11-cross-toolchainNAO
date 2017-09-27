## Copyright (C) 2011, 2012 Aldebaran Robotics

# CMake toolchain file to cross compile on @arch@

# Altough the code look complex, all it does is:

# * Set CMAKE_FIND_ROOT_PATH and CMAKE_FIND_ROOT_MODE
# so that we find libraries in <ctc_path>/sysroot, and only
# in sysroot.
#
# * Force C and CXX compiler to make sure we use gcc from cross.

##
# Utility macros
#espace space (this allow ctc path with space)
macro(set_escaped name)
  string(REPLACE " " "\\ " ${name} ${ARGN})
endmacro()
#double!
macro(set_escaped2 name)
  string(REPLACE " " "\\\\ " ${name} ${ARGN})
endmacro()

set(TARGET_ARCH "i686")
set(TARGET_TUPLE "${TARGET_ARCH}-nptl-linux-gnu")

set(ALDE_CTC_CROSS   "${CMAKE_CURRENT_LIST_DIR}/cross-atom")
set(ALDE_CTC_SYSROOT "${ALDE_CTC_CROSS}/${TARGET_TUPLE}/sysroot")
get_filename_component(_TC_DIR ${CMAKE_CURRENT_LIST_DIR} PATH)

##
# Define the target...
# But first, force cross-compilation, even if we are compiling
# from linux-x86 to linux-x86 ...
include(CMakeForceCompiler)
set(CMAKE_CROSSCOMPILING   ON)
# Then, define the target system
set(CMAKE_SYSTEM_NAME      "Linux")
set(CMAKE_SYSTEM_PROCESSOR ${TARGET_ARCH})
set(CMAKE_EXECUTABLE_FORMAT "ELF")

# Env for dlib
set(DLIB_JPEG_SUPPORT on)

##
# Probe the build/host system...
set(_BUILD_EXT "")
# sanity checks/host detection
if(WIN32)
  if(MSVC)
    # Visual studio
    message(FATAL_ERROR "Host not suppported")
  else()
    # mingw32
    set(_BUILD_EXT ".exe")
  endif()
else()
  if(APPLE)
    # Mac OS X (assume 64bit architecture)
    set(_BUILD_EXT "")
  else()
    # Linux
    set(_BUILD_EXT "")
  endif()
endif()

set(I_AM_A_ROBOT ON CACHE BOOL "this is always defined when we target a robot (either ATOM or GEODE)" FORCE)

# root of the cross compiled filesystem
#should be set but we do find_path in each module outside this folder !!!!
if(NOT CMAKE_FIND_ROOT_PATH)
  set(CMAKE_FIND_ROOT_PATH)
endif()
list(INSERT CMAKE_FIND_ROOT_PATH 0  "${_TC_DIR}")
# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_FIND_ROOT_PATH ${CMAKE_FIND_ROOT_PATH} CACHE INTERNAL "" FORCE)

CMAKE_FORCE_C_COMPILER(  "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-gcc${_BUILD_EXT}" GNU)
CMAKE_FORCE_CXX_COMPILER("${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-g++${_BUILD_EXT}" GNU)

message("${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-g++${_BUILD_EXT}")

set(CMAKE_LINKER  "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-ld${_BUILD_EXT}"      CACHE FILEPATH "" FORCE)
set(CMAKE_AR      "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-ar${_BUILD_EXT}"      CACHE FILEPATH "" FORCE)
set(CMAKE_RANLIB  "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-ranlib${_BUILD_EXT}"  CACHE FILEPATH "" FORCE)
set(CMAKE_NM      "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-nm${_BUILD_EXT}"      CACHE FILEPATH "" FORCE)
set(CMAKE_OBJCOPY "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-objcopy${_BUILD_EXT}" CACHE FILEPATH "" FORCE)
set(CMAKE_OBJDUMP "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-objdump${_BUILD_EXT}" CACHE FILEPATH "" FORCE)
set(CMAKE_STRIP   "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-strip${_BUILD_EXT}"   CACHE FILEPATH "" FORCE)

# If ccache is found, just use it:)
find_program(CCACHE "ccache")
if (CCACHE)
  message( STATUS "Using ccache")
endif(CCACHE)

if (CCACHE AND NOT FORCE_NO_CCACHE)
  set(CMAKE_C_COMPILER                 "${CCACHE}" CACHE FILEPATH "" FORCE)
  set(CMAKE_CXX_COMPILER               "${CCACHE}" CACHE FILEPATH "" FORCE)
  set_escaped2(CMAKE_C_COMPILER_ARG1   "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-gcc${_BUILD_EXT}")
  set_escaped2(CMAKE_CXX_COMPILER_ARG1 "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-g++${_BUILD_EXT}")
else(CCACHE AND NOT FORCE_NO_CCACHE)
  set_escaped(CMAKE_C_COMPILER         "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-gcc${_BUILD_EXT}")
  set_escaped(CMAKE_CXX_COMPILER       "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-g++${_BUILD_EXT}")
endif(CCACHE AND NOT FORCE_NO_CCACHE)

##
# Small hacks for qt: do not use the qmake from the system,
# force path to uic, moc and rcc
set(QT_USE_QMAKE FALSE CACHE INTERNAL "" FORCE)
set(QT_QMAKE_EXECUTABLE QT_QMAKE_EXECUTABLE-NOTFOUND CACHE INTERNAL "" FORCE)
set(QT_UIC_EXECUTABLE "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-uic${_BUILD_EXT}" CACHE INTERNAL "" FORCE)
set(QT_MOC_EXECUTABLE "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-moc${_BUILD_EXT}" CACHE INTERNAL "" FORCE)
set(QT_RCC_EXECUTABLE "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-rcc${_BUILD_EXT}" CACHE INTERNAL "" FORCE)

# same hacks but for qt5
if(NOT TARGET Qt5::uic)
  add_executable(Qt5::uic IMPORTED)
  set_target_properties(Qt5::uic PROPERTIES
    IMPORTED_LOCATION "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-uic-qt5${_BUILD_EXT}")
endif()
if(NOT TARGET Qt5::moc)
  add_executable(Qt5::moc IMPORTED)
  set_target_properties(Qt5::moc PROPERTIES
    IMPORTED_LOCATION "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-moc-qt5${_BUILD_EXT}")
endif()
if(NOT TARGET Qt5::rcc)
  add_executable(Qt5::rcc IMPORTED)
  set_target_properties(Qt5::rcc PROPERTIES
    IMPORTED_LOCATION "${ALDE_CTC_CROSS}/bin/${TARGET_TUPLE}-rcc-qt5${_BUILD_EXT}")
endif()

##
# Set pkg-config for cross-compilation
set(PKG_CONFIG_EXECUTABLE  "${ALDE_CTC_CROSS}/bin/pkg-config" CACHE INTERNAL "" FORCE)

##
# Set target flags
set_escaped(ALDE_CTC_CROSS   ${ALDE_CTC_CROSS})
set_escaped(ALDE_CTC_SYSROOT ${ALDE_CTC_SYSROOT})

set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -DI_AM_A_ROBOT")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --sysroot ${ALDE_CTC_SYSROOT}/")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pipe -fomit-frame-pointer")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fno-align-jumps -fno-align-functions")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fno-align-labels -fno-align-loops")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c++11 -lstdc++ -lrt -O3 -DDLIB_JPEG_SUPPORT ")

if(WITH_BREAKPAD)
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -ggdb -gdwarf-2")
endif()

if("${OPTIMIZE_FOR_TARGET}" STREQUAL "ATOM")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32 -mtune=atom")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mssse3 -mfpmath=sse")
else()
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32 -mtune=generic")
endif()

set(CMAKE_C_FLAGS        "${CMAKE_C_FLAGS}" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS        "${CMAKE_C_FLAGS}" CACHE INTERNAL "")
set(CMAKE_EXE_LINKER_FLAGS "-Wl,-lpthread,-rpath,-lrt,-lm,-lc,-ldl,--as-needed,--sysroot,${ALDE_CTC_SYSROOT}/" CACHE INTERNAL "")
set(CMAKE_MODULE_LINKER_FLAGS "-Wl,--as-needed,--sysroot,${ALDE_CTC_SYSROOT}/" CACHE INTERNAL "")
set(CMAKE_SHARED_LINKER_FLAGS "-Wl,--as-needed,--sysroot,${ALDE_CTC_SYSROOT}/" CACHE INTERNAL "")
message(${CMAKE_MODULE_LINKER_FLAGS})
##
# Make sure we don't have to relink binaries when we cross-compile
set(CMAKE_BUILD_WITH_INSTALL_RPATH ON)
