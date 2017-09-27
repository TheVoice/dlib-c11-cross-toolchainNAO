set(DL_LIBRARIES
  ${ALDE_CTC_SYSROOT}/usr/lib/libdl.so
  CACHE INTERNAL "" FORCE
)

set(DL_INCLUDE_DIRS
  ${ALDE_CTC_SYSROOT}/usr/include
  CACHE INTERNAL "" FORCE
)

export_lib(DL)
