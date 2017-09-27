set(RT_LIBRARIES
  ${ALDE_CTC_SYSROOT}/usr/lib/librt.so
  CACHE INTERNAL "" FORCE
)

set(RT_INCLUDE_DIRS
  ${ALDE_CTC_SYSROOT}/usr/include
  CACHE INTERNAL "" FORCE
)

export_lib(RT)
