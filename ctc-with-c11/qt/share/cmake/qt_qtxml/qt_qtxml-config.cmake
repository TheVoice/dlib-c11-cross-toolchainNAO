get_filename_component(_qtxml_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_qtxml_root "${_qtxml_root}/../../..")
get_filename_component(_qtxml_root "${_qtxml_root}" ABSOLUTE)

set(QT_QTXML_LIBRARIES
  ${_qtxml_root}/lib/qt4/libQtXml.so
  CACHE INTERNAL "" FORCE
)

set(QT_QTXML_INCLUDE_DIRS
  ${_qtxml_root}/include/qt4
  ${_qtxml_root}/include/qt4/QtXml
  CACHE INTERNAL "" FORCE
)

export_lib(QT_QTXML)