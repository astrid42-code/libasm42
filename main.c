/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: asgaulti <asgaulti@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/10 15:30:32 by asgaulti          #+#    #+#             */
/*   Updated: 2024/12/25 17:58:13 by asgaulti         ###   ########.fr       */
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
	char	str3[] = "wesh";
	char	str4[] = " ";
	char	str5[] = "";
	char	str6[] = "42";
	char	str7[] = "libasm";
	printf("-------------------ft_strcpy-------------------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str1, str2));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str1, str2));
	printf("----------\n");
	printf("ft_strcpy : \n");
	printf("%s\n", ft_strcpy(str3, str4));
	printf("strcpy : \n");
	printf("%s\n", strcpy(str3, str4));
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
}

int     main(void)
{
	// ft_main_strlen();
	ft_main_strcpy();
	// ft_main_strcmp();
    // ft_main_strdup();
    // ft_main_write();
    // ft_main_read();
    return (0);
}