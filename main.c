#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

#define BUF_SIZE 4096

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
int		ft_write(int fd, const void *buf, size_t count);
int		ft_read(int fd, void *buf, size_t count);
char	*ft_strdup(const char *s);

void	ft_putchar(char c)
{
	write(STDOUT_FILENO, &c, 1);
}

void	ft_putstr(char *str)
{
	write(STDOUT_FILENO, str, strlen(str));
}

void	ft_putnbr(int n)
{
	char	digit;

	if (n == -2147483648)
		ft_putstr("-2147483648");
	else if (n < 0)
	{
		ft_putchar('-');
		n *= -1;
	}
	if (n > 9)
		ft_putnbr(n / 10);
	digit = n % 10 + '0';
	ft_putchar(digit);
}

int		main(int argc, char **argv)
{
	int		ret;
	int		fd;
	char	buf1[BUF_SIZE];
	char	buf2[BUF_SIZE];
	size_t	buf1_len;
	size_t	buf2_len;
	char	*dup;
	char	*cpy;

	bzero(&buf1, BUF_SIZE);
	bzero(&buf2, BUF_SIZE);
	fd = STDIN_FILENO;
	if (argc > 1)
		fd = open(argv[1], O_RDONLY);

	// ft_read
	ft_putstr(">>>>> ft_read\n");
	errno = 0;
	ret = ft_read(fd, buf1, BUF_SIZE);
	ft_putstr("ret value = ");
	ft_putnbr(ret);
	ft_putchar('\n');
	perror("perror");
	ft_putstr("---------------------------\n\n");

	// ft_strlen
	ft_putstr(">>>>> ft_strlen\n");
	buf1_len = ft_strlen(buf1);
	ft_putstr("buf1_len = ");
	ft_putnbr(buf1_len);
	ft_putchar('\n');
	ft_putstr("---------------------------\n\n");

	// ft_write
	ft_putstr(">>>>> ft_write\n");
	errno = 0;
	ft_putstr("buf1 (next line): \n");
	ret = ft_write(STDOUT_FILENO, buf1, buf1_len);
	ft_putstr("ret value = ");
	ft_putnbr(ret);
	ft_putchar('\n');
	perror("perror");
	ft_putstr("---------------------------\n\n");

	// ft_strdup
	ft_putstr(">>>>> ft_strdup\n");
	errno = 0;
	ft_putstr("dup of buf1 (next line):\n");
	dup = ft_strdup(buf1);
	if (dup != NULL)
		ft_putstr(dup);
	else
		perror("perror");
	ft_putstr("---------------------------\n\n");

	// ft_strcmp
	ft_putstr(">>>>> ft_strcmp\n");
	errno = 0;
	ft_putstr("buf2 to be compared to buf1: ");
	if (ft_read(STDIN_FILENO, buf2, BUF_SIZE) != -1)
	{
		ft_putstr("ret value = ");
		ft_putnbr(ft_strcmp(buf1, buf2));
		ft_putchar('\n');
	}
	else
		perror("perror (ft_read)");
	ft_putstr("---------------------------\n\n");

	// ft_strcpy
	ft_putstr(">>>>> ft_strcpy\n");
	ft_putstr("copy of buf2 in buf1, entire size (don't stop at \\0, use cat -e to appreciate) (next line):\n");
	cpy = ft_strcpy(buf1, buf2);
	buf2_len = ft_strlen(buf2);
	ft_write(STDOUT_FILENO, cpy, buf2_len > buf1_len ? buf2_len : buf1_len);
	ft_putstr("---------------------------\n");

	free(dup);
	if (argc > 1)
		close(fd);
	return (0);
}
