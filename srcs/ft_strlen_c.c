/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: asgaulti <asgaulti@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/13 14:27:31 by asgaulti          #+#    #+#             */
/*   Updated: 2024/12/13 14:29:43 by asgaulti         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

size_t		ft_strlen(const char *s)
{
    int i;
    
    i = 0;
    while(s)
        i++;
    return(i);
}

// gcc -S code.c