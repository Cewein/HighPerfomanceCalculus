CC = gcc
CCFLAGS = -O2 -fopenmp -Wall -Wextra
SRC = ./src/exact_cover.c
OBJ = $(SRC:.c=.o)
RM = rm -f

all : exact_cover_omp

exact_cover_omp : $(OBJ)
	$(CC) $(CCFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CCFLAGS) -c $^ -o $@

clear :
	$(RM) $(OBJ) exact_cover_omp

.PHONY : clear all
