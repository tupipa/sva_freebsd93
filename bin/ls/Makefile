#	@(#)Makefile	8.1 (Berkeley) 6/2/93
# $FreeBSD: releng/9.3/bin/ls/Makefile 244075 2012-12-10 03:11:19Z grog $

.include <bsd.own.mk>

PROG=	ls
SRCS=	cmp.c ls.c print.c util.c
DPADD=	${LIBUTIL}
LDADD=	-lutil

.if !defined(RELEASE_CRUNCH)
CFLAGS+= -DCOLORLS
DPADD+=	${LIBTERMCAP}
LDADD+=	-ltermcap
.endif

.include <bsd.prog.mk>
