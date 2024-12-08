NAME := libftprintf.a
SOURCE := ft_printf.c print_string.c print_number.c
OBJECT := $(SOURCE:.c=.o)
LFTDIR := libft
LFTLIB := $(LFTDIR)/libft.a
CFLAGS := -Wall -Wextra -Werror -I$(LFTDIR)

$(NAME): $(OBJECT) $(LFTLIB)
	cp $(LFTLIB) $(NAME)
	ar rcs $(NAME) $(OBJECT)

$(LFTLIB):
	make -C $(LFTDIR)

all: $(NAME)

clean:
	make -C $(LFTDIR) clean
	$(RM) $(OBJECT)

fclean: clean
	make -C $(LFTDIR) fclean
	$(RM) $(NAME)

re: fclean all
