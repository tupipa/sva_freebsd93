#!/bin/sh
#
# $FreeBSD: releng/9.3/release/scripts/games-install.sh 75328 2001-04-08 23:09:21Z obrien $
#

if [ "`id -u`" != "0" ]; then
	echo "Sorry, this must be done as root."
	exit 1
fi
cat games.?? | tar --unlink -xpzf - -C ${DESTDIR:-/}
exit 0
