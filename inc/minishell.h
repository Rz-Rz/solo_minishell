/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minishell.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kdhrif <kdhrif@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/17 15:05:07 by kdhrif            #+#    #+#             */
/*   Updated: 2023/02/19 19:56:27 by kdhrif           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINISHELL_H
# define MINISHELL_H

/* tcgetattr, tcsetattr */
# include <termios.h>
/* getcwd, chdir */
# include <unistd.h>
/* getenv */
# include <stdlib.h>
/* readline, add_history, rl_on_new_line, rl_replace_line, rl_redisplay, rl_clear_history, perror */
# include <stdio.h>
# include <readline/readline.h>
# include <readline/history.h>
/* kill, signal, sigaction, sigemptyset, sigaddset */
# include <signal.h>
/* errno */
# include <errno.h>




/* src/utils */
size_t	ft_strlen(const char *s);
void	ft_putstr_fd(char *s, int fd);
void	ft_putendl_fd(char *s, int fd);


/* src/prompt */
char	*getcwd_err(char *buf, size_t size);
char	*getenv_err(char *name);
char	*ft_strjoin(char const *s1, char const *s2);

#endif
