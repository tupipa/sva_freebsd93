# $FreeBSD: releng/9.3/usr.sbin/bsdconfig/share/Makefile 266292 2014-05-17 03:49:29Z dteske $

NO_OBJ=

SUBDIR=	media packages

FILESDIR=	${SHAREDIR}/bsdconfig
FILES=		common.subr device.subr dialog.subr geom.subr keymap.subr \
		mustberoot.subr script.subr strings.subr struct.subr \
		sysrc.subr variable.subr

beforeinstall:
	mkdir -p ${DESTDIR}${FILESDIR}

.include <bsd.prog.mk>
