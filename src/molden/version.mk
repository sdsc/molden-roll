PKGROOT            = /opt/molden
NAME               = molden
VERSION            = 5.0.7
RELEASE            = 0
TARBALL_POSTFIX    = tar.gz

SRC_SUBDIR         = molden

SOURCE_NAME        = $(NAME)
SOURCE_VERSION     = 5.0
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)$(VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_NAME)$(SOURCE_VERSION)

TAR_GZ_PKGS           = $(SOURCE_PKG)
