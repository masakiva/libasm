#include <stdio.h>
#include <stdlib.h>

char	*ft_strdup(const char *s);

int		main(void)
{
	char *f = "fghi";
	char *ret;
	ret = ft_strdup(f);
	printf("%s\n", ret);
	free(ret);
	return (0);
}
