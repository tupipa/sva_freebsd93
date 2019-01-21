# $FreeBSD: releng/9.3/secure/libexec/ssh-keysign/Makefile 263970 2014-03-31 14:39:56Z des $

.include <bsd.own.mk>

PROG=	ssh-keysign
SRCS=	ssh-keysign.c roaming_dummy.c readconf.c
MAN=	ssh-keysign.8
CFLAGS+=-I${SSHDIR} -include ssh_namespace.h
BINMODE=4555

DPADD=	${LIBSSH}
LDADD=	-lssh
USEPRIVATELIB= ssh

DPADD+= ${LIBCRYPT} ${LIBCRYPTO} ${LIBZ}
LDADD+= -lcrypt -lcrypto -lz

.include <bsd.prog.mk>

.PATH:	${SSHDIR}

${OBJS} ${POBJS} ${SOBJS}: ssh_namespace.h
