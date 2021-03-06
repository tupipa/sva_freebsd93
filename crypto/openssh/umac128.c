/* $FreeBSD: releng/9.3/crypto/openssh/umac128.c 263970 2014-03-31 14:39:56Z des $ */
#define UMAC_OUTPUT_LEN		16
#undef umac_ctx
#define umac_ctx		umac128_ctx
#undef umac_new
#define umac_new		umac128_new
#undef umac_update
#define umac_update		umac128_update
#undef umac_final
#define umac_final		umac128_final
#undef umac_delete
#define umac_delete		umac128_delete
#include "umac.c"
