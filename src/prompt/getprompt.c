/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   getprompt.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kdhrif <kdhrif@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/19 19:28:09 by kdhrif            #+#    #+#             */
/*   Updated: 2023/02/19 19:55:31 by kdhrif           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/minishell.h"

char *getprompt(void)
{
	char buff[4096];
	char *cwd;
	char *user;
	char *shell;
	char *prompt;

	cwd = getcwd_err(buff, 4095);
	if (cwd == NULL)
		return (NULL);
	user = getenv_err("USER");
	if (user == NULL)
		return (NULL);
	shell = ft_strjoin(user, "@");
	if (shell == NULL)
		return (NULL);
	prompt = ft_strjoin(shell, cwd);
	if (prompt == NULL)
		return (NULL);
	free(shell);
	return (prompt);
}
