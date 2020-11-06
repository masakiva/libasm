#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char	*ft_strcpy(char *dest, const char *src);

int		main(void)
{
	char *src;
	char *dest1;
	char *dest2;

	src = malloc(6);
	dest1 = malloc(6);
	dest2 = malloc(9);
	memset(src, '\0', 6);
	src[0] = 'a';
	src[1] = 'b';
	src[2] = 'c';
	src[3] = 'd';
	src[4] = 'e';
	dest1[0] = 'a';
	dest1[1] = 'b';
	dest1[2] = 'c';
	dest1[3] = 'd';
	dest1[4] = 'e';
	dest1[5] = '\0';
	dest2[0] = 'a';
	dest2[1] = 'b';
	dest2[2] = 'c';
	dest2[3] = 'd';
	dest2[4] = 'e';
	dest2[5] = '\0';
	printf("ft_strcpy: %s\n", ft_strcpy(dest1, src));
	//printf("ft_strcpy: %s\n", strcpy(dest2 + 1, dest2));
	printf("strcpy:    %s\n", strcpy(dest2 + 1, dest2));
	printf("%s\n", dest2);
	free(src);
	free(dest1);
	free(dest2);
	return (0);
}
