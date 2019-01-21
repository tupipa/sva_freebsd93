# $FreeBSD: releng/9.3/secure/libexec/sftp-server/Makefile 263970 2014-03-31 14:39:56Z des $

.include <bsd.own.mk>

PROG=   sftp-server
SRCS=   sftp-server.c sftp-common.c sftp-server-main.c
MAN=	sftp-server.8
CFLAGS+=-I${SSHDIR} -include ssh_namespace.h

.if !defined(NO_SHARED)
# required when linking with a dynamic libssh
SRCS+=	roaming_dummy.c
.endif

DPADD=	${LIBSSH}
LDADD=  -lssh
USEPRIVATELIB= ssh

DPADD+=	${LIBCRYPT} ${LIBCRYPTO} ${LIBZ}
LDADD+=	-lcrypt -lcrypto -lz

.include <bsd.prog.mk>

.PATH:	${SSHDIR}

${OBJS} ${POBJS} ${SOBJS}: ssh_namespace.h
