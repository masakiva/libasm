#include <stdio.h>
#include <string.h>

int		ft_strcmp(const char *s1, const char *s2);

int		main(void)
{
	char *s1 = "fghi";
	char *s2 = "fghi";

	printf("ft_strcmp: %d\n", ft_strcmp(s1, s2));
	printf("strcmp:    %d\n", strcmp(s1, s2));
	return (0);
}
