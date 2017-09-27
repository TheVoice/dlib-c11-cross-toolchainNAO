# This is an autogenerated file. Do not edit

get_filename_component(_cur_dir ${CMAKE_CURRENT_LIST_FILE} PATH)
set(_root_dir "${_cur_dir}/../../../")
get_filename_component(ROOT_DIR ${_root_dir} ABSOLUTE)

 
set(QI_INCLUDE_DIRS "${ROOT_DIR}/include;" CACHE STRING "" FORCE)
mark_as_advanced(QI_INCLUDE_DIRS)
   

find_library(QI_DEBUG_LIBRARY qi_d)
find_library(QI_LIBRARY       qi)


if (QI_DEBUG_LIBRARY)
  set(QI_LIBRARIES optimized;${QI_LIBRARY};debug;${QI_DEBUG_LIBRARY})
else()
  set(QI_LIBRARIES ${QI_LIBRARY})
endif()

set(QI_LIBRARIES ${QI_LIBRARIES} CACHE INTERNAL "" FORCE)
 
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(QI DEFAULT_MSG
  QI_LIBRARIES
  QI_INCLUDE_DIRS
)
set(QI_PACKAGE_FOUND ${QI_FOUND} CACHE INTERNAL "" FORCE)
 
set(QI_DEPENDS "BOOST_CHRONO;BOOST_FILESYSTEM;BOOST_SYSTEM;BOOST_PROGRAM_OPTIONS;BOOST_REGEX;BOOST_LOCALE;BOOST_THREAD;PTHREAD;DL;RT" CACHE INTERNAL "" FORCE)
 