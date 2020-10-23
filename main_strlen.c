#include <stdio.h>

int		ft_strlen(char *);

int		main(void)
{
	char *f = "fs";
	printf("%c\n", ft_strlen(f));
	printf("%p\n", f);
	return (0);
}
