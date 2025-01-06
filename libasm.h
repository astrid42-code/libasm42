#ifndef LIBASM_H
#define LIBASM_H

#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>

//fcts tests
void		ft_main_strlen(void);
void		ft_main_strcpy(void);
void		ft_main_strcmp(void);
void		ft_main_strdup(void);
void		ft_main_write(void);
void		ft_main_read(void);

//fcts asm
size_t		ft_strlen(const char *s);
char		*ft_strcpy(char *dest, const char *src);
int			ft_strcmp(const char *s1, const char *s2);
char		*ft_strdup(const char *s);
ssize_t		ft_write(int fd, const void *buf, size_t count); 
ssize_t		ft_read(int fd, void *buf, size_t count);

#endif