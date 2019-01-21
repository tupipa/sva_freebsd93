# $FreeBSD: releng/9.3/usr.sbin/pkg/Makefile 263038 2014-03-11 18:15:05Z bapt $

PROG=	pkg
SRCS=	pkg.c dns_utils.c config.c
MAN=	pkg.7

CFLAGS+=-I${.CURDIR}/../../contrib/libucl/include
.PATH:	${.CURDIR}/../../contrib/libucl/include
DPADD=	${LIBARCHIVE} ${LIBELF} ${LIBFETCH} ${LIBUCL} ${LIBSBUF} ${LIBSSL} \
	${LIBCRYPTO}
LDADD=	-larchive -lelf -lfetch -lucl -lsbuf -lssl -lcrypto
USEPRIVATELIB=	ucl

.include <bsd.prog.mk>
