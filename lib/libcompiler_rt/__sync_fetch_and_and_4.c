/* $FreeBSD: releng/9.3/lib/libcompiler_rt/__sync_fetch_and_and_4.c 236016 2012-05-25 17:50:50Z marius $ */
#define	NAME		__sync_fetch_and_and_4
#define	TYPE		uint32_t
#define	CMPSET		atomic_cmpset_32
#define	EXPRESSION	t & value

#include "__sync_fetch_and_op_n.h"
