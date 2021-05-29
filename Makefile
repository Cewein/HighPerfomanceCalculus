
all : exact_cover_omp exact_cover_seq exact_cover_mpi exact_cover_mpi_omp

test :
	./launch_tests.sh

exact_cover_omp :
	make -C ./src/ver_OMP

exact_cover_seq :
	make -C ./src/ver_seq

exact_cover_mpi :
	make -C ./src/ver_MPI

exact_cover_mpi :
	make -C ./src/ver_MPI_OMP

clean :
	make clean -C ./src/ver_OMP
	make clean -C ./src/ver_MPI
	make clean -C ./src/ver_seq
	make clean -C ./src/ver_MPI_OMP

.PHONY : clean all

.SILENT: clean test
