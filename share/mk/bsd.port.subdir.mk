# $FreeBSD: releng/9.3/share/mk/bsd.port.subdir.mk 131482 2004-07-02 20:47:18Z eik $

PORTSDIR?=	/usr/ports
BSDPORTSUBDIRMK?=	${PORTSDIR}/Mk/bsd.port.subdir.mk

.include "${BSDPORTSUBDIRMK}"
