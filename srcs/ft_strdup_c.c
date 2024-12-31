
#include <stdlib.h>

char	*ft_strdup(char *src)
{
	int		i;
	char	*copy_src;

	i = 0;
	if (src[i] == '\0')
		return (0);
	while (src[i])
		i++;
	if (!(copy_src = malloc(sizeof(char) * (i + 1))))
		return (0);
	i = 0;
	while (src[i])
	{
		copy_src[i] = src[i];
		i++;
	}
	copy_src[i] = '\0';
	return (copy_src);
}