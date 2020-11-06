#include <stdio.h>

size_t	ft_strlen(const char *s);

int		main(void)
{
	char *f = "fghi";
	printf("%zu\n", ft_strlen(f));
	return (0);
}
