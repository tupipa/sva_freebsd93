/*-
 * This file is in the public domain.
 *
 * $FreeBSD: releng/9.3/usr.sbin/fwcontrol/fwmethods.h 163712 2006-10-26 22:33:38Z imp $
 */

typedef void (fwmethod)(int dev_fd, const char *filename, char ich, int count);
extern fwmethod dvrecv;
extern fwmethod dvsend;
extern fwmethod mpegtsrecv;
