#
# $FreeBSD: releng/9.3/tools/tools/netmap/Makefile 262153 2014-02-18 05:58:36Z luigi $
#
# For multiple programs using a single source file each,
# we can just define 'progs' and create custom targets.
PROGS	=	pkt-gen bridge vale-ctl

CLEANFILES = $(PROGS) *.o
NO_MAN=
CFLAGS += -Werror -Wall # -nostdinc -I/usr/include -I../../../sys
CFLAGS += -Wextra

LDFLAGS += -lpthread
.ifdef WITHOUT_PCAP
CFLAGS += -DNO_PCAP
.else
LDFLAGS += -lpcap
.endif

.include <bsd.prog.mk>
.include <bsd.lib.mk>

all: $(PROGS)

pkt-gen: pkt-gen.o
	$(CC) $(CFLAGS) -o pkt-gen pkt-gen.o $(LDFLAGS)

bridge: bridge.o
	$(CC) $(CFLAGS) -o bridge bridge.o

vale-ctl: vale-ctl.o
	$(CC) $(CFLAGS) -o vale-ctl vale-ctl.o
