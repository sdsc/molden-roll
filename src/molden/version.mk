NAME           = sdsc-molden
VERSION        = 5.9
RELEASE        = 0
PKGROOT        = /opt/molden

SRC_SUBDIR     = molden

SOURCE_NAME    = molden
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)$(VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_NAME)$(SOURCE_VERSION)

TAR_GZ_PKGS    = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No\nAutoProv:No
RPM.PREFIX     = $(PKGROOT)
