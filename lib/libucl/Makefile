# $FreeBSD: releng/9.3/lib/libucl/Makefile 263032 2014-03-11 16:24:54Z bapt $

LIBUCL=	${.CURDIR}/../../contrib/libucl

LIB=		ucl
PRIVATELIB=	true
SHLIB_MAJOR=	1
SRCS=		ucl_emitter.c \
		ucl_hash.c \
		ucl_parser.c  \
		ucl_util.c \
		xxhash.c

.PATH:		${LIBUCL}/src

WARNS=		1
CFLAGS+=	-I${LIBUCL}/include \
		-I${LIBUCL}/src \
		-I${LIBUCL}/uthash

.include <bsd.lib.mk>
