
all : exact_cover_omp exact_cover_seq exact_cover_mpi

test :
	./launch_tests.sh

exact_cover_omp :
	make -C ./src/ver_OMP

exact_cover_seq :
	make -C ./src/ver_seq

exact_cover_mpi :
	make -C ./src/ver_MPI

clean :
	make clean -C ./src/ver_OMP
	make clean -C ./src/ver_MPI
	make clean -C ./src/ver_seq

.PHONY : clean all

.SILENT: clean test
