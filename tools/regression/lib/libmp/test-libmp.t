#!/bin/sh
# $FreeBSD: releng/9.3/tools/regression/lib/libmp/test-libmp.t 160786 2006-07-28 16:00:59Z simon $

cd `dirname $0`

executable=`basename $0 .t`

make $executable 2>&1 > /dev/null

exec ./$executable
