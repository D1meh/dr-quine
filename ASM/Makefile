NAME = dr_quine
COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

COL_SRC = Colleen.s
COL_OBJ = $(COL_SRC:.s=.o)

GRA_SRC = Grace.s
GRA_OBJ = $(GRA_SRC:.s=.o)

SUL_SRC = Sully.s
SUL_OBJ = $(SUL_SRC:.s=.o)

CC = nasm -f macho64
RM = rm -f

all: $(NAME)

%.o:%.s
	$(CC) $<

$(NAME):	$(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):	$(COL_OBJ)
			@gcc $(COL_OBJ) -o $(COLLEEN)

$(GRACE):	$(GRA_OBJ)
			@gcc $(GRA_OBJ) -o $(GRACE)

$(SULLY):	$(SUL_OBJ)
			@gcc $(SUL_OBJ) -o $(SULLY)

clean:
			$(RM) $(COL_OBJ) $(GRA_OBJ) $(SUL_OBJ)

fclean:		clean
			$(RM) $(COLLEEN) $(GRACE) $(SULLY)

cleansully:
			$(RM) Sully_5.s Sully_5 Sully_5.o Sully_4 Sully_4.s Sully_4.o Sully_3 Sully_3.s Sully_3.o Sully_2 Sully_2.s Sully_2.o Sully_1 Sully_1.s Sully_1.o Sully_0 Sully_0.s Sully_0.o

re:			fclean all