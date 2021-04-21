CC = gcc
CCFLAGS = -O3 -fopenmp -Wall -Wextra -pg
SRC = ./src/exact_cover.c
OBJ = $(SRC:.cpp=.o)
RM = rm -f

all : exact_cover_omp

exact_cover_omp : $(OBJ)
	$(CC) $(CCFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CCFLAGS) -c $<

clear :
	$(RM) $(OBJ) exact_cover_omp

.PHONY : clear all
