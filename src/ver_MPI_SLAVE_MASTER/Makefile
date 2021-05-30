MPI = mpicc
CCFLAGS = -O3 -fopenmp -Wall -Wextra
SRC_MPI = ./exact_cover_mpi_slave_master.c
OBJ_MPI = $(SRC_MPI:.c=.o)
RM = rm -f

all : exact_cover_mpi_slave_master

exact_cover_mpi_slave_master : $(OBJ_MPI)
	$(MPI) $(CCFLAGS) -o $@ $^

%.o: %.c
	$(MPI) $(CCFLAGS) -c $^ -o $@

clean :
	$(RM) $(OBJ_MPI) exact_cover_mpi_slave_master

.PHONY : clean all
