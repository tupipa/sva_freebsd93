/*
 * The contents of this file are in the public domain.
 * Written by Garrett A. Wollman, 2000-10-07.
 *
 */

#include <sys/cdefs.h>
__FBSDID("$FreeBSD: releng/9.3/lib/libc/gen/pmadvise.c 261561 2014-02-06 19:47:50Z kib $");

#include <sys/mman.h>
#include <errno.h>

int
posix_madvise(void *address, size_t size, int how)
{
	int ret, saved_errno;

	saved_errno = errno;
	if (madvise(address, size, how) == -1) {
		ret = errno;
		errno = saved_errno;
	} else {
		ret = 0;
	}
	return (ret);
}
