#!/bin/sh

# $FreeBSD: releng/9.3/tools/regression/usr.bin/make/shell/select/test.t 146822 2005-05-31 14:13:07Z harti $

cd `dirname $0`
. ../../common.sh

# Description
DESC="Select the builtin sh shell."

# Run
TEST_N=3
TEST_1="sh_test"
TEST_2="csh_test"
TEST_3="ksh_test"
TEST_3_SKIP="no ksh on FreeBSD"

eval_cmd $*