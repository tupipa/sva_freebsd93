#!/bin/sh
#
# $FreeBSD: releng/9.3/tools/regression/netinet/tcpfullwindowrst/tcpfullwindowrst.t 138269 2004-12-01 12:12:12Z nik $

make tcpfullwindowrsttest 2>&1 > /dev/null

./tcpfullwindowrsttest
