NAME := libftprintf.a
SOURCE := ft_printf.c print_string.c print_number.c
OBJECT := $(SOURCE:.c=.o)
LFTDIR := libft
LFTLIB := libft.a
CFLAGS := -Wall -Wextra -Werror -I$(LFTDIR)

$(NAME): $(OBJECT) $(LFTLIB)
	cp $(LFTLIB) $(NAME)
	ar rcs $(NAME) $(OBJECT)

$(LFTLIB): $(LFTDIR)/$(LFTLIB)
	cp $(LFTDIR)/$(LFTLIB) $(LFTLIB)

$(LFTDIR)/$(LFTLIB):
	make -C $(LFTDIR)

all: $(NAME)

clean:
	make -C $(LFTDIR) clean
	$(RM) $(OBJECT)

fclean: clean
	make -C $(LFTDIR) fclean
	$(RM) $(NAME) $(LFTLIB)

re: fclean all
