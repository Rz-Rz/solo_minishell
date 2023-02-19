# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdhrif <kdhrif@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/17 15:02:59 by kdhrif            #+#    #+#              #
#    Updated: 2023/02/19 20:50:55 by kdhrif           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME     = minishell
SRCS_DIR = srcs
BONUS_DIR = bonus
OBJS_DIR = objs
SRCS	=\
		  ./src/utils/ft_putendl_fd.c\
		  ./src/utils/ft_strlen.c\
		  ./src/utils/ft_putstr_fd.c\
		  ./src/utils/ft_strjoin.c\
		  ./src/main.c\
		  ./src/prompt/getcwd_err.c\
		  ./src/prompt/display.c\
		  ./src/prompt/getenv_err.c\
		  ./src/prompt/getprompt.c

OBJS     = $(SRCS:.c=.o)
CC       = gcc
CFLAGS   =  -Wall -Wextra -Werror
HEADERS  = includes/minishell.h

all: $(NAME)

$(OBJS_DIR):
	@mkdir -p $(OBJS_DIR)
	@echo "\033[33mcompiling ${NAME}..."
	@echo "SRCS = ${SRCS}"
	@echo "OBJS = ${OBJS}"

${OBJS_DIR}/%.o: ${SRCS_DIR}/%.c
	@${CC} ${CFLAGS} -c $< -o $@


${NAME}: $(OBJS_DIR) $(OBJS) ${HEADERS}
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)
	@echo "\033[32m$ ${NAME} compiled !"

clean:
	rm -rf $(OBJS_DIR)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY:	all clean fclean re bonus
