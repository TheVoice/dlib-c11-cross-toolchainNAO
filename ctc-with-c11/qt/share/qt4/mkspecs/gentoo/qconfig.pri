#configuration
CONFIG +=  def_files_disabled exceptions no_mocdepend release stl qt_no_framework
QT_ARCH = i386
QT_EDITION = OpenSource
QT_CONFIG +=  minimal-config small-config medium-config large-config full-config reduce_exports reduce_relocations ipv6 clock-gettime clock-monotonic mremap getaddrinfo ipv6ifname getifaddrs inotify no-jpeg no-mng no-png no-gif no-tiff freetype system-zlib nis iconv glib openssl alsa audio-backend release

#versioning
QT_VERSION = 4.7.4
QT_MAJOR_VERSION = 4
QT_MINOR_VERSION = 7
QT_PATCH_VERSION = 4

#namespaces
QT_LIBINFIX = 
QT_NAMESPACE = 
QT_NAMESPACE_MAC_CRC = 

QMAKE_RPATHDIR += "/usr/lib/qt4"
QT_GCC_MAJOR_VERSION = 4
QT_GCC_MINOR_VERSION = 5
QT_GCC_PATCH_VERSION = 3
