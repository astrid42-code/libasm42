/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: asgaulti <asgaulti@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/10 15:30:32 by asgaulti          #+#    #+#             */
/*   Updated: 2024/12/30 16:54:42 by asgaulti         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void		ft_main_strlen(void)
{
	printf("-------------------ft_strlen-------------------\n");
	printf("ft_strlen : test12345\n");
	printf("%zd\n", ft_strlen("test12345"));
	printf("strlen : \n");
	printf("%zd\n", strlen("test12345"));
	printf("----------\n");
	printf("ft_strlen : 1\n");
	printf("%zd\n", ft_strlen("1"));
	printf("strlen : \n");
	printf("%zd\n", strlen("1"));
	printf("----------\n");
	printf("ft_strlen : test\n");
	printf("%zd\n", ft_strlen("test"));
	printf("strlen : \n");
	printf("%zd\n", strlen("test"));
	printf("----------\n");
	printf("ft_strlen : nothing inside quotes\n");
	printf("%zd\n", ft_strlen(""));
	printf("strlen : \n");
	printf("%zd\n", strlen(""));
	printf("----------\n");
	printf("ft_strlen : 1 space test\n");
	printf("%zd\n", ft_strlen(" "));
	printf("strlen : \n");
	printf("%zd\n", strlen(" "));
	printf("----------\n");
	printf("ft_strlen : 1 space test with return\n");
	printf("%zd\n", ft_strlen(" \n"));
	printf("strlen : \n");
	printf("%zd\n", strlen(" \n"));
	printf("----------\n");
	printf("ft_strlen : return test\n");
	printf("%zd\n", ft_strlen("\n"));
	printf("strlen : \n");
	printf("%zd\n", strlen("\n"));
	printf("----------\n");
	printf("ft_strlen : multiple characters test \n");
	printf("%zd\n", ft_strlen("zzzzzzzzzzzzzzzzzzzzzzzz hey"));
	printf("strlen : \n");
	printf("%zd\n", strlen("zzzzzzzzzzzzzzzzzzzzzzzz hey"));
	printf("----------\n");
	printf("ft_strlen : multiple characters test with return \n");
	printf("%zd\n", ft_strlen("zzzzzzzzzzzzzzzzzzzzzzzz hey\n"));
	printf("strlen : \n");
	printf("%zd\n", strlen("zzzzzzzzzzzzzzzzzzzzzzzz hey\n"));
}

void		ft_main_strcpy(void)
{
	char	str1[] = "Hello";
	char	str2[] = "world";
	char	str3[] = "123";
	char	str4[] = " ";
	char	str5[] = "";
	char	str6[] = "42";
	char	str7[] = "libasm";
	char	str8[] = "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh";
	printf("-------------------ft_strcpy-------------------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str1, str2));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str1, str2));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str4, str3));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str4, str3));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str5, str6));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str5, str6));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str6, str7));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str6, str7));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str7, str4));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str7, str4));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str6, str8));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str6, str8));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str8, str4));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str8, str4));
}

void		ft_main_strcmp(void)
{
	printf("-------------------ft_strcmp-------------------\n");
	printf("ft_strcmp : 1 \n");
	printf("%d\n", ft_strcmp("1", "1"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("1", "1"));
	printf("----------\n");
	printf("ft_strcmp : 1 / -1 (greater) \n");
	printf("%d\n", ft_strcmp("1", "-1"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("1", "-1"));
	printf("----------\n");
	printf("ft_strcmp : less \n");
	printf("%d\n", ft_strcmp("", "coucou"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("", "coucou"));
	printf("----------\n");
	printf("ft_strcmp : greater \n");
	printf("%d\n", ft_strcmp("lol", "coucou"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("lol", "coucou"));
	printf("----------\n");
	printf("ft_strcmp : greater\n");
	printf("%d\n", ft_strcmp("hohohoho", ""));
	printf("strcmp : \n");
	printf("%d\n", strcmp("hohohoho", ""));
	printf("----------\n");
	printf("ft_strcmp : \n");
	printf("%d\n", ft_strcmp("bonjou", "bonjour"));
	printf("strcmp : less\n");
	printf("%d\n", strcmp("bonjou", "bonjour"));
	printf("----------\n");
	printf("ft_strcmp : equal\n");
	printf("%d\n", ft_strcmp("bonjour", "bonjour"));
	printf("strcmp : \n");
	printf("%d\n", strcmp("bonjour", "bonjour"));
}

#ifndef OPEN_MAX
#define OPEN_MAX FOPEN_MAX
#endif

void		ft_main_write(void)
{
	int tmp[2];

	printf("-------------------ft_write-------------------\n");
 	printf("ft_write : 0, coucou, 6\n");
	printf("\nreturn = %zd\n", ft_write(0, "coucou", 6));
 	printf("write : \n");
	printf("\nreturn = %zd\n", write(0, "coucou", 6));
	printf("----------\n");
	printf("ft_write : 0, test, 2\n");
	printf("\nreturn = %zd\n", ft_write(0, "test", 2));
 	printf("write : \n");
	printf("\nreturn = %zd\n", write(0, "test", 2));
	printf("----------\n");
	printf("ft_write : 0, test, 1\n");
	printf("\nreturn = %zd\n", ft_write(0, "test", 1));
 	printf("write : \n");
	printf("\nreturn = %zd\n", write(0, "test", 1));
	printf("----------\n");
	printf("ft_write : 1, jrufnsc2, 9\n");
	printf("\nreturn = %zd\n", ft_write(1, "jrufnsc2", 9));
 	printf("write : \n");
	printf("\nreturn = %zd\n", write(1, "jrufnsc2", 9));
	printf("----------\n");
	printf("ft_write : 100, jrufnsc2, 9\n");
	printf("\nreturn = %zd\n", ft_write(100, "jrufnsc2", 9));
 	printf("errno : %d\n", errno);
	printf("write : \n");
	errno = 0;
	printf("\nreturn = %zd\n", write(100, "jrufnsc2", 9));
 	printf("errno : %d\n", errno);
	printf("----------\n");
	printf("ft_write : -1, test, 5\n");
	printf("\nreturn = %zd\n", ft_write(-1, "test", 5));
 	printf("errno : %d\n", errno);
	errno = 0;
 	printf("write : \n");
	printf("\nreturn = %zd\n", write(-1, "test", 5));
 	printf("errno : %d\n", errno);
	printf("----------\n");
	printf("ft_write : -1, tt, 2\n");
	printf("\nreturn = %zd\n", ft_write(-1, "tt", 2));
 	printf("errno : %d\n", errno);
	errno = 0;
 	printf("write : \n");
	printf("\nreturn = %zd\n", write(-1, "tt", 2));
 	printf("errno : %d\n", errno);
	printf("----------\n");
	printf("ft_write : OPEN_MAX + 1, tt, 2\n");
	printf("\nreturn = %zd\n", ft_write(OPEN_MAX + 1, "tt", 2));
 	printf("errno : %d\n", errno);
	errno = 0;
 	printf("write : \n");
	printf("\nreturn = %zd\n", write(OPEN_MAX + 1, "tt", 2));
 	printf("errno : %d\n", errno);
	printf("----------\n");
	printf("ft_write : 0, test, 2\n");
	printf("\nreturn = %zd\n", ft_write(0, NULL, 0));
 	printf("write : \n");
	printf("\nreturn = %zd\n", write(0, NULL, 0));
}

void		ft_main_read(void)
{
    printf("-------------------ft_read-------------------\n");
    char		buff[100];
    int         fd;
    ssize_t     ret;

	printf("ft_read : \n");   
    	fd = open("test.txt", O_RDONLY);
    	ret = ft_read(fd, buff, 10);
    	buff[ret] = '\0';
	printf("buff = %sret = %zd\n", buff, ret);
	close(fd);

	printf("read : \n");
	fd = open("test.txt", O_RDONLY);
	ret = read(fd, buff, 10);
	buff[ret] = '\0';
	printf("buff = %sret = %zd\n", buff, ret);
    	close(fd);
	printf("----------\n");
	printf("ft_read : \n");
    	fd = open("lol.txt", O_RDONLY);
    	ret = ft_read(fd, buff, 10);
 	printf("errno : %d\n", errno);
    	buff[ret] = '\0';
	printf("buff = %sret = %zd\n", buff, ret);
	close(fd);

	errno = 0;
	printf("read : \n");
	fd = open("lol.txt", O_RDONLY);
	ret = read(fd, buff, 10);
 	printf("errno : %d\n", errno);
	buff[ret] = '\0';
	printf("buff = %sret = %zd\n", buff, ret);
    	close(fd);
	printf("----------\n");
	char	buf_read[2048];
	int tmp[2];

	printf("ft_read : \n");
    	ret = ft_read(-1, buf_read, 2);
 	printf("errno : %d\n", errno);
	printf("buf: %s, ret = %zd\n", buf_read, ret);
	close(fd);
	errno = 0;
	printf("read : \n");
	ret = read(-1, buf_read, 2);
 	printf("errno : %d\n", errno);
	printf("buf: %s, ret = %zd\n", buf_read, ret);
	printf("----------\n");
	printf("ft_read : \n");
    	ret = ft_read(tmp[0], NULL, 2);
 	printf("errno : %d\n", errno);
	printf("buf: %s, ret = %zd\n", buf_read, ret);
	close(fd);
	errno = 0;
	// printf("read : \n");
	// ret = read(tmp[0], NULL, 2);
 	// printf("errno : %d\n", errno);
	// printf("buf: %s, ret = %zd\n", buf_read, ret);
	printf("----------\n");
	printf("ft_read : \n");
    ret = ft_read(OPEN_MAX + 1, buf_read, 2);
 	printf("errno : %d\n", errno);
	printf("buf: %s, ret = %zd\n", buf_read, ret);
	close(fd);
	errno = 0;
	printf("read : \n");
	ret = read(OPEN_MAX + 1, buf_read, 2);
 	printf("errno : %d\n", errno);
	printf("buf: %s, ret = %zd\n", buf_read, ret);
}

void		ft_main_strdup(void)
{
	printf("-------------------ft_strdup-------------------\n");
    printf("ft_strdup : \n");
	printf("%s\n", ft_strdup("a"));
    printf("strdup : \n");
	printf("%s\n", strdup("a"));
	printf("----------\n");
    printf("ft_strdup : \n");
	printf("%s\n", ft_strdup("test12345"));
    printf("strdup : \n");
	printf("%s\n", strdup("test12345"));
	printf("----------\n");
	printf("ft_strdup : \n");
	printf("%s\n", ft_strdup("kjdsfhgsk nhuia;wgwefhgfz"));
    printf("strdup : \n");
	printf("%s\n", strdup("kjdsfhgsk nhuia;wgwefhgfz"));
	printf("----------\n");
	printf("ft_strdup : \n");
	printf("%s\n", ft_strdup("Lorem ipsum dolor sit amet, consectetur adipiscingelit. Sed in malesuada purus. Etiam a scelerisque massa. Ut non euismod elit. Aliquambibendum dolor mi, id fringilla tellus pulvinar eu. Fusce vel fermentum sem. Crasvolutpat, eros eget rhoncus rhoncus, diam augue egestas dolor, vitae rutrum nisifelis sed purus. Mauris magna ex, mollis non suscipit eu, lacinia ac turpis. Phasellusac tortor et lectus fermentum lobortis eu at mauris. Vestibulum sit amet posueretortor, sit amet consequat amet."));
    printf("strdup : \n");
	printf("%s\n", strdup("Lorem ipsum dolor sit amet, consectetur adipiscingelit. Sed in malesuada purus. Etiam a scelerisque massa. Ut non euismod elit. Aliquambibendum dolor mi, id fringilla tellus pulvinar eu. Fusce vel fermentum sem. Crasvolutpat, eros eget rhoncus rhoncus, diam augue egestas dolor, vitae rutrum nisifelis sed purus. Mauris magna ex, mollis non suscipit eu, lacinia ac turpis. Phasellusac tortor et lectus fermentum lobortis eu at mauris. Vestibulum sit amet posueretortor, sit amet consequat amet."));
	printf("----------\n");
	printf("ft_strdup : \n");
	printf("%s\n", ft_strdup("\n"));
    printf("strdup : \n");
	printf("%s\n", strdup("\n"));
	printf("----------\n");
	printf("ft_strdup : \n");
	printf("%s\n", ft_strdup(""));
    printf("strdup : \n");
	printf("%s\n", strdup(""));
}


int     main(void)
{
	ft_main_strlen();
	ft_main_strcpy();
	ft_main_strcmp();
    ft_main_write();
    ft_main_read();
    ft_main_strdup();
    return (0);
}