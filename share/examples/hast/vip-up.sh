#!/bin/sh
# $FreeBSD: releng/9.3/share/examples/hast/vip-up.sh 204076 2010-02-18 23:16:19Z pjd $

set -m
/root/hast/sbin/hastd/ucarp_up.sh &
set +m
exit 0
