/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   getcwd_err.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kdhrif <kdhrif@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/19 19:10:32 by kdhrif            #+#    #+#             */
/*   Updated: 2023/02/19 19:24:55 by kdhrif           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/minishell.h"

char	*getcwd_err(char *buf, size_t size)
{
	char	*tmp;

	tmp = getcwd(buf, size);
	if (tmp == NULL)
	{
		ft_putstr_fd("minishell: ", 2);
		ft_putstr_fd(buf, 2);
		ft_putstr_fd(": ", 2);
		ft_putendl_fd(strerror(errno), 2);
	}
	return (tmp);
}
