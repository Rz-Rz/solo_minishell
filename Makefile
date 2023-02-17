# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdhrif <kdhrif@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/17 15:02:59 by kdhrif            #+#    #+#              #
#    Updated: 2023/02/17 15:03:31 by kdhrif           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME     = minishell
SRCS_DIR = srcs
BONUS_DIR = bonus
OBJS_DIR = objs
SRCS	:= $(shell find srcs/*.c -exec basename \ {} \;)
OBJS     = ${patsubst %.c,${OBJS_DIR}/%.o,${SRCS}}
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
