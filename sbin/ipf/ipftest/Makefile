#	$FreeBSD: releng/9.3/sbin/ipf/ipftest/Makefile 204585 2010-03-02 16:58:04Z uqs $

PROG=		ipftest
SRCS=		${GENHDRS} ipftest.c fil.c ip_frag.c ip_state.c ip_nat.c \
		ip_proxy.c ip_auth.c ip_htable.c ip_lookup.c \
		ip_pool.c ip_scan.c ip_sync.c ip_rules.c \
		ip_fil.c ip_log.c ippool_y.c ippool_l.c ipf_y.c \
		ipf_l.c ipnat_y.c ipnat_l.c md5.c radix.c bpf_filter.c
MAN=		ipftest.1

WARNS?=		0
CFLAGS+=	-DIPFILTER_LOG -DIPFILTER_COMPILED -DIPFILTER_LOOKUP \
		-DIPFILTER_SCAN -DIPFILTER_SYNC -DIPFILTER_CKSUM -I.

.PATH:		${.CURDIR}/../../../sys/contrib/ipfilter/netinet

GENHDRS=	ipnat_l.h ipnat_y.h ippool_l.h ippool_y.h ipf_l.h ipf_y.h
DPSRCS+=	${GENHDRS}

CLEANFILES+=	${GENHDRS} 
CLEANFILES+=	ipf_y.c ipf_l.c
CLEANFILES+=	ipf.tab.c ipf.tab.h
CLEANFILES+=	ipnat_y.c ipnat_l.c
CLEANFILES+=	ipnat.tab.c ipnat.tab.h
CLEANFILES+=	ippool_y.c ippool_l.c
CLEANFILES+=	ippool.tab.c ippool.tab.h

ipnat_y.c: ipnat_y.y
	${YACC} -b ipnat -d ${.ALLSRC}
	sed -e 's/yy/ipnat_yy/g' \
	    -e 's/y.tab.c/ipnat_y.c/' \
	    -e s/\"ipnat_y.y\"/\"..\\/tools\\/ipnat_y.y\"/ \
	    ipnat.tab.c > ${.TARGET}
	sed -e 's/yy/ipnat_yy/g' \
	    -e 's/y.tab.h/ipnat_y.h/' \
	    ipnat.tab.h > ${.TARGET:.c=.h}

ipnat_y.h: ipnat_y.c

ipnat_l.c: lexer.c
	sed -e 's/yy/ipnat_yy/g' \
	    -e 's/y.tab.h/ipnat_y.h/' \
	    -e 's/lexer.h/ipnat_l.h/' \
	    ${.ALLSRC} > ${.TARGET}

ipnat_l.h: lexer.h
	sed -e 's/yy/ipnat_yy/g' \
	    ${.ALLSRC} > ${.TARGET}

ippool_y.c: ippool_y.y
	${YACC} -b ippool -d ${.ALLSRC}
	sed -e 's/yy/ippool_yy/g' \
	    -e 's/"ippool_y.y"/"..\/tools\/ippool_y.y"/' \
	    ippool.tab.c > ${.TARGET}
	sed -e 's/yy/ippool_yy/g' \
	    ippool.tab.h > ${.TARGET:.c=.h}

ippool_y.h: ippool_y.c

ippool_l.c: lexer.c
	sed -e 's/yy/ippool_yy/g' \
	    -e 's/y.tab.h/ippool_y.h/' \
	    -e 's/lexer.h/ippool_l.h/' \
	    ${.ALLSRC} > ${.TARGET}

ippool_l.h: lexer.h
	sed -e 's/yy/ippool_yy/g' \
	    ${.ALLSRC} > ${.TARGET}

ipf_y.c: ipf_y.y
	${YACC} -b ipf -d ${.ALLSRC}
	sed -e 's/yy/ipf_yy/g' \
	    -e 's/"ipf_y.y"/"..\/tools\/ipf_y.y"/' \
		ipf.tab.c > ${.TARGET}
	sed -e 's/yy/ipf_yy/g' \
		ipf.tab.h > ${.TARGET:.c=.h}

ipf_y.h: ipf_y.c

ipf_l.c: lexer.c
	sed -e 's/yy/ipf_yy/g' \
	     -e 's/y.tab.h/ipf_y.h/' \
	     -e 's/lexer.h/ipf_l.h/' \
	    ${.ALLSRC} > ${.TARGET}

ipf_l.h: lexer.h
	sed -e 's/yy/ipf_yy/g' \
	    ${.ALLSRC} > ${.TARGET}

.include <bsd.prog.mk>
