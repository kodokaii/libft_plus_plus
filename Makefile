NAME 		= libft.a
CC 			= cc
CFLAGS 		+= -Wall -Wextra -Werror
SRC 		= ft_abs.c\
			  ft_argv.c\
			  ft_atof.c\
			  ft_atoi.c\
			  ft_basename.c\
			  ft_bzero.c\
			  ft_calloc.c\
			  ft_get_envp.c\
			  ft_heredoc.c\
			  ft_isalnum.c\
			  ft_isalpha.c\
			  ft_isascii.c\
			  ft_isdigit.c\
			  ft_isprint.c\
			  ft_isspace.c\
			  ft_itoa.c\
			  ft_lstadd_back.c\
			  ft_lstadd_front.c\
			  ft_lstclear.c\
			  ft_lstdelone.c\
			  ft_lstiter.c\
			  ft_lstlast.c\
			  ft_lstmap.c\
			  ft_lstnew.c\
			  ft_lstsize.c\
			  ft_max.c\
			  ft_memchr.c\
			  ft_memchrset.c\
			  ft_memcmp.c\
			  ft_memcpy.c\
			  ft_memdup.c\
			  ft_memmove.c\
			  ft_memset.c\
			  ft_min.c\
			  ft_nblen.c\
			  ft_putchar_fd.c\
			  ft_putendl_fd.c\
			  ft_putnbr_base_fd.c\
			  ft_putnbr_fd.c\
			  ft_putstr_fd.c\
			  ft_putstrn_fd.c\
			  ft_split.c\
			  ft_strchr.c\
			  ft_strcmp.c\
			  ft_strdup.c\
			  ft_striteri.c\
			  ft_strjoin.c\
			  ft_strlcat.c\
			  ft_strlcpy.c\
			  ft_strlen.c\
			  ft_strmapi.c\
			  ft_strncmp.c\
			  ft_strndup.c\
			  ft_strnstr.c\
			  ft_strpbrk.c\
			  ft_strrchr.c\
			  ft_strtoi.c\
			  ft_strtrim.c\
			  ft_substr.c\
			  ft_swap.c\
			  ft_tolower.c\
			  ft_toupper.c\
			  ft_which.c\
			  ft_word.c\
			  gnl/ft_gnl.c\
			  gnl/ft_read_line.c\
			  pipex/ft_execve.c\
			  pipex/ft_pipex.c\
			  printf/ft_check.c\
			  printf/ft_dprintf.c\
			  printf/ft_hexa.c\
			  printf/ft_integer.c\
			  printf/ft_option.c\
			  printf/ft_parsing.c\
			  printf/ft_pointer.c\
			  printf/ft_printf.c\

OBJ 		= $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar crs $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY:		all clean fclean re
