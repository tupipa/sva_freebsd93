# Really quick and evil Makefile for building all the tests.  I wish that
# bmake was friendlier to the concept of multiple progs/libs in the same
# directory.
#
# $FreeBSD: releng/9.3/gnu/lib/libodialog/TESTS/Makefile 114602 2003-05-03 21:30:34Z obrien $

PROGS=	msg yesno prgbox gauge dselect fselect text menu1 menu2 menu3 \
	input1 input2 check1 check2 check3 radio1 radio2 radio3 \
	ftree1 ftree2 tree

WARNS?=	2
CFLAGS+= -Wall -Wstrict-prototypes
LDFLAGS+= -ldialog

all: ${PROGS}

clean:
	rm -f ${PROGS}
	
.include <bsd.prog.mk>
