# This is an autogenerated file. Do not edit

get_filename_component(_cur_dir ${CMAKE_CURRENT_LIST_FILE} PATH)
set(_root_dir "${_cur_dir}/../../../")
get_filename_component(ROOT_DIR ${_root_dir} ABSOLUTE)

 
set(ALPARAMMANAGER_INCLUDE_DIRS "${ROOT_DIR}/include;" CACHE STRING "" FORCE)
mark_as_advanced(ALPARAMMANAGER_INCLUDE_DIRS)
   

find_library(ALPARAMMANAGER_DEBUG_LIBRARY alparammanager_d)
find_library(ALPARAMMANAGER_LIBRARY       alparammanager)


if (ALPARAMMANAGER_DEBUG_LIBRARY)
  set(ALPARAMMANAGER_LIBRARIES optimized;${ALPARAMMANAGER_LIBRARY};debug;${ALPARAMMANAGER_DEBUG_LIBRARY})
else()
  set(ALPARAMMANAGER_LIBRARIES ${ALPARAMMANAGER_LIBRARY})
endif()

set(ALPARAMMANAGER_LIBRARIES ${ALPARAMMANAGER_LIBRARIES} CACHE INTERNAL "" FORCE)
 
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ALPARAMMANAGER DEFAULT_MSG
  ALPARAMMANAGER_LIBRARIES
  ALPARAMMANAGER_INCLUDE_DIRS
)
set(ALPARAMMANAGER_PACKAGE_FOUND ${ALPARAMMANAGER_FOUND} CACHE INTERNAL "" FORCE)
 
set(ALPARAMMANAGER_DEPENDS "" CACHE INTERNAL "" FORCE)
 