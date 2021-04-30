CC = gcc
MPI = mpicc
CCFLAGS = -O3 -fopenmp -Wall -Wextra
SRC_OMP = ./src/exact_cover.c
OBJ_OMP = $(SRC_OMP:.c=.o)
SRC_SEQ = ./src/exact_cover_originel.c
OBJ_SEQ = $(SRC_SEQ:.c=.o)
SRC_MPI = ./src/exact_cover_mpi.c
OBJ_MPI = $(SRC_MPI:.c=.o)
RM = rm -f

all : exact_cover_omp exact_cover_seq exact_cover_mpi

exact_cover_omp : $(OBJ_OMP)
	$(CC) $(CCFLAGS) -o $@ $^

exact_cover_seq : $(OBJ_SEQ)
	$(CC) $(CCFLAGS) -o $@ $^

exact_cover_mpi : $(OBJ_MPI)
	$(MPI) $(CCFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CCFLAGS) -c $^ -o $@

clean :
	$(RM) $(OBJ_SEQ) $(OBJ_OMP) exact_cover_mpi exact_cover_omp exact_cover_seq

.PHONY : clean all
