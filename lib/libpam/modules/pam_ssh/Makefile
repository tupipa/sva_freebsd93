# PAM module for SSH
# $FreeBSD: releng/9.3/lib/libpam/modules/pam_ssh/Makefile 263421 2014-03-20 10:56:05Z des $

SSHDIR=	${.CURDIR}/../../../../crypto/openssh

LIB=	pam_ssh
MAN=	pam_ssh.8
SRCS=	pam_ssh.c

# required when linking with a dynamic libssh
SRCS+=	roaming_dummy.c

WARNS?=	3
CFLAGS+= -I${SSHDIR} -include ssh_namespace.h

DPADD=	${LIBSSH} ${LIBCRYPTO} ${LIBCRYPT}
LDADD=	-lssh -lcrypto -lcrypt
USEPRIVATELIB= ssh

.include <bsd.lib.mk>

.PATH: ${SSHDIR}

${OBJS} ${POBJS} ${SOBJS}: ssh_namespace.h
