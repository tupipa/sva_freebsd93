#	@(#)Makefile.inc	8.1 (Berkeley) 6/4/93
# $FreeBSD: releng/9.3/lib/libc/i386/gen/Makefile.inc 231981 2012-02-21 21:18:59Z kib $

SRCS+=	_ctx_start.S _setjmp.S _set_tp.c fabs.S \
	flt_rounds.c getcontextx.c infinity.c ldexp.c makecontext.c modf.S \
	rfork_thread.S setjmp.S signalcontext.c sigsetjmp.S