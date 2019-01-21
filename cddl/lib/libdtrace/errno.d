/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License, Version 1.0 only
 * (the "License").  You may not use this file except in compliance
 * with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 *
 * Portions Copyright 2006-2008 John Birrell jb@freebsd.org
 *
 * $FreeBSD: releng/9.3/cddl/lib/libdtrace/errno.d 179189 2008-05-22 04:26:42Z jb $
 */
/*
 * Copyright 2004 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */

inline int EPERM = 1;
#pragma D binding "1.0" EPERM
inline int ENOENT = 2;
#pragma D binding "1.0" ENOENT
inline int ESRCH = 3;
#pragma D binding "1.0" ESRCH
inline int EINTR = 4;
#pragma D binding "1.0" EINTR
inline int EIO = 5;
#pragma D binding "1.0" EIO
inline int ENXIO = 6;
#pragma D binding "1.0" ENXIO
inline int E2BIG = 7;
#pragma D binding "1.0" E2BIG
inline int ENOEXEC = 8;
#pragma D binding "1.0" ENOEXEC
inline int EBADF = 9;
#pragma D binding "1.0" EBADF
inline int ECHILD = 10;
#pragma D binding "1.0" ECHILD
inline int EDEADLK = 11;
#pragma D binding "1.0" EDEADLK
inline int ENOMEM = 12;
#pragma D binding "1.0" ENOMEM
inline int EACCES = 13;
#pragma D binding "1.0" EACCES
inline int EFAULT = 14;
#pragma D binding "1.0" EFAULT
inline int ENOTBLK = 15;
#pragma D binding "1.0" ENOTBLK
inline int EBUSY = 16;
#pragma D binding "1.0" EBUSY
inline int EEXIST = 17;
#pragma D binding "1.0" EEXIST
inline int EXDEV = 18;
#pragma D binding "1.0" EXDEV
inline int ENODEV = 19;
#pragma D binding "1.0" ENODEV
inline int ENOTDIR = 20;
#pragma D binding "1.0" ENOTDIR
inline int EISDIR = 21;
#pragma D binding "1.0" EISDIR
inline int EINVAL = 22;
#pragma D binding "1.0" EINVAL
inline int ENFILE = 23;
#pragma D binding "1.0" ENFILE
inline int EMFILE = 24;
#pragma D binding "1.0" EMFILE
inline int ENOTTY = 25;
#pragma D binding "1.0" ENOTTY
inline int ETXTBSY = 26;
#pragma D binding "1.0" ETXTBSY
inline int EFBIG = 27;
#pragma D binding "1.0" EFBIG
inline int ENOSPC = 28;
#pragma D binding "1.0" ENOSPC
inline int ESPIPE = 29;
#pragma D binding "1.0" ESPIPE
inline int EROFS = 30;
#pragma D binding "1.0" EROFS
inline int EMLINK = 31;
#pragma D binding "1.0" EMLINK
inline int EPIPE = 32;
#pragma D binding "1.0" EPIPE
inline int EDOM = 33;
#pragma D binding "1.0" EDOM
inline int ERANGE = 34;
#pragma D binding "1.0" ERANGE
inline int EAGAIN = 35;
#pragma D binding "1.0" EAGAIN
inline int EWOULDBLOCK = EAGAIN;
#pragma D binding "1.0" EWOULDBLOCK
inline int EINPROGRESS = 36;
#pragma D binding "1.0" EINPROGRESS
inline int EALREADY = 37;
#pragma D binding "1.0" EALREADY
inline int ENOTSOCK = 38;
#pragma D binding "1.0" ENOTSOCK
inline int EDESTADDRREQ = 39;
#pragma D binding "1.0" EDESTADDRREQ
inline int EMSGSIZE = 40;
#pragma D binding "1.0" EMSGSIZE
inline int EPROTOTYPE = 41;
#pragma D binding "1.0" EPROTOTYPE
inline int ENOPROTOOPT = 42;
#pragma D binding "1.0" ENOPROTOOPT
inline int EPROTONOSUPPORT = 43;
#pragma D binding "1.0" EPROTONOSUPPORT
inline int ESOCKTNOSUPPORT = 44;
#pragma D binding "1.0" ESOCKTNOSUPPORT
inline int EOPNOTSUPP = 45;
#pragma D binding "1.0" EOPNOTSUPP
inline int ENOTSUP = EOPNOTSUPP;
#pragma D binding "1.0" ENOTSUP
inline int EPFNOSUPPORT = 46;
#pragma D binding "1.0" EPFNOSUPPORT
inline int EAFNOSUPPORT = 47;
#pragma D binding "1.0" EAFNOSUPPORT
inline int EADDRINUSE = 48;
#pragma D binding "1.0" EADDRINUSE
inline int EADDRNOTAVAIL = 49;
#pragma D binding "1.0" EADDRNOTAVAIL
inline int ENETDOWN = 50;
#pragma D binding "1.0" ENETDOWN
inline int ENETUNREACH = 51;
#pragma D binding "1.0" ENETUNREACH
inline int ENETRESET = 52;
#pragma D binding "1.0" ENETRESET
inline int ECONNABORTED = 53;
#pragma D binding "1.0" ECONNABORTED
inline int ECONNRESET = 54;
#pragma D binding "1.0" ECONNRESET
inline int ENOBUFS = 55;
#pragma D binding "1.0" ENOBUFS
inline int EISCONN = 56;
#pragma D binding "1.0" EISCONN
inline int ENOTCONN = 57;
#pragma D binding "1.0" ENOTCONN
inline int ESHUTDOWN = 58;
#pragma D binding "1.0" ESHUTDOWN
inline int ETOOMANYREFS = 59;
#pragma D binding "1.0" ETOOMANYREFS
inline int ETIMEDOUT = 60;
#pragma D binding "1.0" ETIMEDOUT
inline int ECONNREFUSED = 61;
#pragma D binding "1.0" ECONNREFUSED
inline int ELOOP = 62;
#pragma D binding "1.0" ELOOP
inline int ENAMETOOLONG = 63;
#pragma D binding "1.0" ENAMETOOLONG
inline int EHOSTDOWN = 64;
#pragma D binding "1.0" EHOSTDOWN
inline int EHOSTUNREACH = 65;
#pragma D binding "1.0" EHOSTUNREACH
inline int ENOTEMPTY = 66;
#pragma D binding "1.0" ENOTEMPTY
inline int EPROCLIM = 67;
#pragma D binding "1.0" EPROCLIM
inline int EUSERS = 68;
#pragma D binding "1.0" EUSERS
inline int EDQUOT = 69;
#pragma D binding "1.0" EDQUOT
inline int ESTALE = 70;
#pragma D binding "1.0" ESTALE
inline int EREMOTE = 71;
#pragma D binding "1.0" EREMOTE
inline int EBADRPC = 72;
#pragma D binding "1.0" EBADRPC
inline int ERPCMISMATCH = 73;
#pragma D binding "1.0" ERPCMISMATCH
inline int EPROGUNAVAIL = 74;
#pragma D binding "1.0" EPROGUNAVAIL
inline int EPROGMISMATCH = 75;
#pragma D binding "1.0" EPROGMISMATCH
inline int EPROCUNAVAIL = 76;
#pragma D binding "1.0" EPROCUNAVAIL
inline int ENOLCK = 77;
#pragma D binding "1.0" ENOLCK
inline int ENOSYS = 78;
#pragma D binding "1.0" ENOSYS
inline int EFTYPE = 79;
#pragma D binding "1.0" EFTYPE
inline int EAUTH = 80;
#pragma D binding "1.0" EAUTH
inline int ENEEDAUTH = 81;
#pragma D binding "1.0" ENEEDAUTH
inline int EIDRM = 82;
#pragma D binding "1.0" EIDRM
inline int ENOMSG = 83;
#pragma D binding "1.0" ENOMSG
inline int EOVERFLOW = 84;
#pragma D binding "1.0" EOVERFLOW
inline int ECANCELED = 85;
#pragma D binding "1.0" ECANCELED
inline int EILSEQ = 86;
#pragma D binding "1.0" EILSEQ
inline int ENOATTR = 87;
#pragma D binding "1.0" ENOATTR
inline int EDOOFUS = 88;
#pragma D binding "1.0" EDOOFUS
inline int EBADMSG = 89;
#pragma D binding "1.0" EBADMSG
inline int EMULTIHOP = 90;
#pragma D binding "1.0" EMULTIHOP
inline int ENOLINK = 91;
#pragma D binding "1.0" ENOLINK
inline int EPROTO = 92;
#pragma D binding "1.0" EPROTO
inline int ELAST = 92;
#pragma D binding "1.0" ELAST
inline int ERESTART = -1;
#pragma D binding "1.0" ERESTART
inline int EJUSTRETURN = -2;
#pragma D binding "1.0" EJUSTRETURN
inline int ENOIOCTL = -3;
#pragma D binding "1.0" ENOIOCTL
inline int EDIRIOCTL = -4;
#pragma D binding "1.0" EDIRIOCTL
