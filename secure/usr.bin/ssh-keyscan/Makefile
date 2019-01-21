# $FreeBSD: releng/9.3/secure/usr.bin/ssh-keyscan/Makefile 263970 2014-03-31 14:39:56Z des $

.include <bsd.own.mk>

PROG=	ssh-keyscan
SRCS=	ssh-keyscan.c roaming_dummy.c
CFLAGS+=-I${SSHDIR} -include ssh_namespace.h

DPADD=	${LIBSSH}
LDADD=	-lssh
USEPRIVATELIB= ssh

DPADD+= ${LIBCRYPT} ${LIBCRYPTO} ${LIBZ}
LDADD+= -lcrypt -lcrypto -lz

.include <bsd.prog.mk>

.PATH:	${SSHDIR}

${OBJS} ${POBJS} ${SOBJS}: ssh_namespace.h
