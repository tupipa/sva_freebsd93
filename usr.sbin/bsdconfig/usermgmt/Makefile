# $FreeBSD: releng/9.3/usr.sbin/bsdconfig/usermgmt/Makefile 263791 2014-03-27 03:20:47Z dteske $

NO_OBJ=

SUBDIR= include share

FILESDIR=	${LIBEXECDIR}/bsdconfig/070.usermgmt
FILES=		INDEX USAGE

SCRIPTSDIR=	${FILESDIR}
SCRIPTS=	groupadd groupdel groupedit useradd userdel useredit usermgmt

beforeinstall:
	mkdir -p ${DESTDIR}${FILESDIR}

.include <bsd.prog.mk>
