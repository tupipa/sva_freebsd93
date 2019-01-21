# $FreeBSD: releng/9.3/sbin/devd/Makefile 263911 2014-03-29 11:33:52Z dim $

PROG_CXX=devd
SRCS=	devd.cc token.l parse.y y.tab.h
MAN=	devd.8 devd.conf.5

WARNS?=	3

NO_SHARED?=YES

DPADD=	${LIBL} ${LIBUTIL}
LDADD=	-ll -lutil

YFLAGS+=-v
CFLAGS+=-I. -I${.CURDIR}

CLEANFILES= y.output

.include <bsd.prog.mk>
