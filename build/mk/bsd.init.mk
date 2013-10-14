#
# Copyright (c) 2006-2009, Juniper Networks, Inc.
# All rights reserved.
#

# avoid duplicate definitions
.ifndef __sdk_init__
__sdk_init__ = 1

# VBE can create /usr/local/etc/junos-make.conf to redefine $TMPDIR
.-include "/usr/local/etc/junos-make.conf"

JUNOS_SDK_BUILD_ENV = yes

NEED_IMPLICIT_LDADD ?= yes

# we define this symbol to make sure we get the right includes
CFLAGS += -D__JUNOS_SDK__

CFLAGS += \
	-I${RELSRCTOP}/include \
	-I${RELSRCTOP_BSD}/sys/posix4 \
	-I${RELSRCTOP_BSD}/include \
	-I${RELOBJTOP_BSD}/include

HOST_CFLAGS += -D__JUNOS_SDK__

# this is where to find our own ddl directories
# (do this *before* the juniper init)
SDK_DDL_INC := ${RELSRCTOP_JUNOS}/lib/ddl
SDK_RRDL_INC := ${RELSRCTOP_JUNOS}/lib/rrdl

.include <provider-prefix.mk>
JUNOS_SDK_INSTALLDIR ?= /opt/sdk/${PROVIDER_PREFIX}

.endif

# Pick up the Juniper init
.include "${SYS_MK_DIR}/bsd.init.mk"
