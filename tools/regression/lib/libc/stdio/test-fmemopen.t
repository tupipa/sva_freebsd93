#!/bin/sh
# $FreeBSD: releng/9.3/tools/regression/lib/libc/stdio/test-fmemopen.t 257232 2013-10-27 22:18:27Z jilles $

cd `dirname $0`

executable=`basename $0 .t`

make $executable 2>&1 > /dev/null

echo 1..1
if ./$executable; then
	echo ok 1 - $executable successful
else
	echo not ok 1 - $executable failed
fi
