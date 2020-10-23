#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

int		ft_write(int fd, const void *buf, size_t count);

int		main(void)
{
	char	*f = "str\n";
	int		ret;

	errno = 0;
	ret = ft_write(3, f, 1);
	printf("ret (rax) = %d\n", ret);
	printf("errno     = %d\n", errno);
	return (0);
}
