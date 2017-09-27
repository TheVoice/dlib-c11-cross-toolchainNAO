get_filename_component(_qtscript_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_qtscript_root "${_qtscript_root}/../../..")
get_filename_component(_qtscript_root "${_qtscript_root}" ABSOLUTE)


set(QT_QTSCRIPT_LIBRARIES
  ${_qtscript_root}/lib/qt4/libQtScript.so
  CACHE INTERNAL "" FORCE
)

set(QT_QTSCRIPT_INCLUDE_DIRS
  ${_qtscript_root}/usr/include/qt4
  ${_qtscript_root}/usr/include/qt4/QtScript
  CACHE INTERNAL "" FORCE
)

export_lib(QT_QTSCRIPT)