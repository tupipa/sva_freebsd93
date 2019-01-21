/*-
 * Copyright (c) 2011 David Schultz <das@FreeBSD.ORG>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#include <sys/cdefs.h>
__FBSDID("$FreeBSD: releng/9.3/lib/msun/src/s_cexp.c 219359 2011-03-07 03:09:24Z das $");

#include <complex.h>
#include <math.h>

#include "math_private.h"

static const uint32_t
exp_ovfl  = 0x40862e42,			/* high bits of MAX_EXP * ln2 ~= 710 */
cexp_ovfl = 0x4096b8e4,			/* (MAX_EXP - MIN_DENORM_EXP) * ln2 */
k         = 1799;			/* constant for reduction */

static const double
kln2      =  1246.97177782734161156;	/* k * ln2 */

double complex
cexp(double complex z)
{
	double x, y, exp_x;
	uint32_t hx, hy, lx, ly;
	int scale;

	x = creal(z);
	y = cimag(z);

	EXTRACT_WORDS(hy, ly, y);
	hy &= 0x7fffffff;

	/* cexp(x + I 0) = exp(x) + I 0 */
	if ((hy | ly) == 0)
		return (cpack(exp(x), y));
	if (hy >= 0x7ff00000) {
		EXTRACT_WORDS(hx, lx, x);
		if (lx != 0 || (hx & 0x7fffffff) != 0x7ff00000) {
			/* cexp(finite|NaN +- I Inf|NaN) = NaN + I NaN */
			return (cpack(y - y, y - y));
		} else if (hx & 0x80000000) {
			/* cexp(-Inf +- I Inf|NaN) = 0 + I 0 */
			return (cpack(0.0, 0.0));
		} else {
			/* cexp(+Inf +- I Inf|NaN) = Inf + I NaN */
			return (cpack(x, y - y));
		}
	}

	GET_HIGH_WORD(hx, x);
	if (hx >= exp_ovfl && hx <= cexp_ovfl) {
		/*
		 * x is between 709.7 and 1454.3, so we must scale to avoid
		 * overflow in exp(x).  We use exp(x) = exp(x - kln2) * 2**k,
		 * carefully chosen to minimize |exp(kln2) - 2**k|.  We also
		 * scale the exponent of exp(x) to MANT_DIG to avoid loss of
		 * accuracy due to underflow if sin(y) is tiny.
		 */
		exp_x = exp(x - kln2);
		GET_HIGH_WORD(hx, exp_x);
		SET_HIGH_WORD(exp_x, (hx & 0xfffff) | ((0x3ff + 52) << 20));
		scale = (hx >> 20) - (0x3ff + 52) + k;
		return (cpack(scalbn(cos(y) * exp_x, scale),
			scalbn(sin(y) * exp_x, scale)));
	} else {
		/*
		 * Cases covered here:
		 *  -  x < exp_ovfl and exp(x) won't overflow (common case)
		 *  -  x > cexp_ovfl, so exp(x) * s overflows for all s > 0
		 *  -  x = +-Inf (generated by exp())
		 *  -  x = NaN (spurious inexact exception from y)
		 */
		exp_x = exp(x);
		return (cpack(exp_x * cos(y), exp_x * sin(y)));
	}
}
