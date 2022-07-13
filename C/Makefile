NAME = dr_quine
COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

COL_SRC = Colleen.c
COL_OBJ = $(COL_SRC:.c=.o)

GRA_SRC = Grace.c
GRA_OBJ = $(GRA_SRC:.c=.o)

SUL_SRC = Sully.c
SUL_OBJ = $(SUL_SRC:.c=.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror -g -fsanitize=address
RM = rm -f

all: $(NAME)

$(NAME):	$(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):	$(COL_OBJ)
			$(CC) $(CFLAGS) $(COL_OBJ) -o $(COLLEEN)

$(GRACE):	$(GRA_OBJ)
			$(CC) $(CFLAGS) $(GRA_OBJ) -o $(GRACE)

$(SULLY):	$(SUL_OBJ)
			$(CC) $(CFLAGS) $(SUL_OBJ) -o $(SULLY)

clean:
			$(RM) $(COL_OBJ) $(GRA_OBJ) $(SUL_OBJ)

fclean:		clean
			$(RM) $(COLLEEN) $(GRACE) $(SULLY)

cleansully:
			$(RM) Sully_5 Sully_5.c Sully_4 Sully_4.c Sully_3 Sully_3.c Sully_2 Sully_2.c Sully_1 Sully_1.c Sully_0 Sully_0.c

re:			fclean all