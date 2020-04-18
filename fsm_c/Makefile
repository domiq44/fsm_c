
DEBUG=yes
CC=gcc
ifeq ($(DEBUG),yes)
	CFLAGS=-Wall -pedantic -g
	LDFLAGS=
else
	CFLAGS=-Wall -pedantic
	LDFLAGS=
endif
EXEC=main
SRC= $(wildcard *.c)
OBJ= $(SRC:.c=.o)

all: $(EXEC)
ifeq ($(DEBUG),yes)
	@echo "Génération en mode debug"
else
	@echo "Génération en mode release"
endif

main: $(OBJ)
	@$(CC) -o $@ $^ $(LDFLAGS)

main.o: zs_lex.h zs_lex_fsm.h zsys.h

%.o: %.c
	@$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper

clean:
	@rm -rf *.o

mrproper: clean
	@rm -rf $(EXEC)


