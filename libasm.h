# ifndef LIBASM_H
# define LIBASM_H

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>

int     ft_read(int fd, char *buf, int size);
int     ft_write(int fd, char *buf, int size);
int     ft_strcmp(char *str1, char *str2);
char    *ft_strcpy(char *dst, char *src);
char    *ft_strdup(char *str);
int     ft_strlen(char *str);

#endif