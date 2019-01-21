#!/bin/sh
#
# $FreeBSD: releng/9.3/crypto/openssh/freebsd-post-merge.sh 263970 2014-03-31 14:39:56Z des $
#

xargs perl -n -i -e '
	print;
	s/\$(Id|OpenBSD): [^\$]*/\$FreeBSD/ && print;
	m/^\#include "includes.h"/ && print "__RCSID(\"\$FreeBSD\$\");\n";
' <keywords

xargs perl -p -i -e '
	s/^\.Dd \$Mdocdate: (\w+) (\d+) (\d+) \$$/.Dd $1 $2, $3/
' <mdocdates
