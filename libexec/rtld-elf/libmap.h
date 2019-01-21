/*
 * $FreeBSD: releng/9.3/libexec/rtld-elf/libmap.h 263031 2014-03-11 16:13:03Z des $
 */

int	lm_init (char *);
void	lm_fini (void);
char *	lm_find (const char *, const char *);
char *	lm_findn (const char *, const char *, const int);
