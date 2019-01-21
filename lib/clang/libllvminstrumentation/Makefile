# $FreeBSD: releng/9.3/lib/clang/libllvminstrumentation/Makefile 263509 2014-03-21 17:56:32Z dim $

.include <bsd.own.mk>

LIB=	llvminstrumentation

SRCDIR=	lib/Transforms/Instrumentation
SRCS=	AddressSanitizer.cpp \
	BoundsChecking.cpp \
	DataFlowSanitizer.cpp \
	DebugIR.cpp \
	GCOVProfiling.cpp \
	MemorySanitizer.cpp \
	Instrumentation.cpp \
	ThreadSanitizer.cpp

TGHDRS=	Intrinsics

.include "../clang.lib.mk"
