#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

int		ft_read(int fd, void *buf, size_t count);

int		main(void)
{
	char	f[42];
	int		ret;

	errno = 0;
	ret = ft_read(3, f, 42);
	printf("ret (rax) = %d\n", ret);
	printf("errno     = %d\n", errno);
	return (0);
}
