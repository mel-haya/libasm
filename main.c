#include "libasm.h"

int main()
{
    char *a = malloc(1000);
    int fd = open("ft_read.s",O_RDONLY);
    ft_read(fd,a,0);

    printf("%s\n",a);
    free(a);
    return 0;
}