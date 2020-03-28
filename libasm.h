#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>


size_t      ft_strlen(const char *s);
char        *ft_strcpy(char *dest, const char *src);
ssize_t     ft_write(int fd, const void *buf, size_t count);
ssize_t     ft_read(int fd, void *buf, size_t count);
