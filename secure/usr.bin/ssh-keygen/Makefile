# $FreeBSD: releng/9.3/secure/usr.bin/ssh-keygen/Makefile 263970 2014-03-31 14:39:56Z des $

.include <bsd.own.mk>

PROG=	ssh-keygen
SRCS=	ssh-keygen.c
CFLAGS+=-I${SSHDIR} -include ssh_namespace.h

.if !defined(NO_SHARED)
# required when linking with a dynamic libssh
SRCS+=	roaming_dummy.c
.endif

DPADD=	${LIBSSH}
LDADD=	-lssh
USEPRIVATELIB= ssh

DPADD+= ${LIBCRYPT} ${LIBCRYPTO} ${LIBZ}
LDADD+= -lcrypt -lcrypto -lz

.include <bsd.prog.mk>

.PATH:	${SSHDIR}

${OBJS} ${POBJS} ${SOBJS}: ssh_namespace.h
