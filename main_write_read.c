#include <stdio.h>
#include <string.h>
#include <strings.h>
#include <errno.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int		ft_read(int fd, void *buf, size_t count);
int		ft_write(int fd, const void *buf, size_t count);

int		main(int argc, char **argv)
{
	int		ret;
	int		fd;
	char	buf[4096];

	bzero(&buf, 4096);
	errno = 0;
	fd = STDIN_FILENO;
	if (argc > 1)
		fd = open(argv[1], O_RDONLY);
	ret = ft_read(fd, &buf, 4096);
	printf("ft_read ret (rax) = %d\n", ret);
	perror("ft_read");
	errno = 0;
	ret = ft_write(STDOUT_FILENO, &buf, strlen(buf));
	printf("ft_write ret (rax) = %d\n", ret);
	perror("ft_write");
	if (argc > 1)
		close(fd);
	return (0);
}
