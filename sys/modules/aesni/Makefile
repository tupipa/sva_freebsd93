# $FreeBSD: releng/9.3/sys/modules/aesni/Makefile 237986 2012-07-02 09:47:38Z obrien $

.PATH: ${.CURDIR}/../../crypto/aesni

KMOD=	aesni
SRCS=	aesni.c aesni_wrap.c
SRCS+=	aesencdec_${MACHINE_CPUARCH}.S aeskeys_${MACHINE_CPUARCH}.S
SRCS+=	device_if.h bus_if.h opt_bus.h cryptodev_if.h

.include <bsd.kmod.mk>
