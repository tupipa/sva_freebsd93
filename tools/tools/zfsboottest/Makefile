# $FreeBSD: releng/9.3/tools/tools/zfsboottest/Makefile 260734 2014-01-16 14:24:22Z avg $

.PATH:		${.CURDIR}/../../../sys/boot/zfs ${.CURDIR}/../../../sys/cddl/boot/zfs

BINDIR?=	/usr/bin
SCRIPTSDIR?=	/usr/bin

PROG=		zfsboottest
SCRIPTS=	zfsboottest.sh
SCRIPTSNAME=	zfsboottest.sh
NO_MAN=

CFLAGS=	-O1 \
	-I${.CURDIR}/../../../sys/boot/zfs \
	-I${.CURDIR}/../../../sys/cddl/boot/zfs \
	-I. \
	-fdiagnostics-show-option \
	-W -Wextra -Wno-sign-compare -Wno-unused-parameter
LDADD+=	-lmd

.if ${MACHINE_CPUARCH} == "amd64"
beforedepend zfsboottest.o: machine
CLEANFILES+=	machine
machine:
	ln -sf ${.CURDIR}/../../../sys/i386/include machine
.endif

.include <bsd.prog.mk>
