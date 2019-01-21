#!/bin/sh
# $FreeBSD: releng/9.3/tools/regression/lib/libc/stdio/test-fopen.t 257229 2013-10-27 21:49:52Z jilles $

cd `dirname $0`

executable=`basename $0 .t`

make $executable 2>&1 > /dev/null

exec ./$executable
