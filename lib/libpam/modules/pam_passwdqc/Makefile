# $FreeBSD: releng/9.3/lib/libpam/modules/pam_passwdqc/Makefile 263421 2014-03-20 10:56:05Z des $

SRCDIR=	${.CURDIR}/../../../../contrib/pam_modules/pam_passwdqc
.PATH: ${SRCDIR}

LIB=	pam_passwdqc
SRCS=	pam_passwdqc.c passwdqc_check.c passwdqc_random.c wordset_4k.c
MAN=	pam_passwdqc.8

WARNS?=	2
CFLAGS+= -I${SRCDIR}

DPADD=	${LIBCRYPT}
LDADD=	-lcrypt

.include <bsd.lib.mk>

