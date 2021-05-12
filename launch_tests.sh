#! /bin/sh

make -s #silencieux


#OMP
./exact_cover_omp --in ./instances/bell12.ec -- progress-report 0 > ./resultats/bell12_omp.txt
./exact_cover_omp --in ./instances/bell13.ec -- progress-report 0 > ./resultats/bell13_omp.txt
./exact_cover_omp --in ./instances/bell14.ec -- progress-report 0 > ./resultats/bell14_omp.txt


./exact_cover_omp --in ./instances/matching8.ec -- progress-report 0 > ./resultats/matching8_omp.txt
./exact_cover_omp --in ./instances/matching9.ec -- progress-report 0 > ./resultats/matching9_omp.txt
./exact_cover_omp --in ./instances/matching10.ec -- progress-report 0 > ./resultats/matching10_omp.txt

#matching 8 9 10

#pento

#SEQ
./exact_cover_seq --in ./instances/bell12.ec -- progress-report 0 > ./resultats/bell12_seq.txt
./exact_cover_seq --in ./instances/bell13.ec -- progress-report 0 > ./resultats/bell13_seq.txt
./exact_cover_seq --in ./instances/bell14.ec -- progress-report 0 > ./resultats/bell14_seq.txt

./exact_cover_seq --in ./instances/matching8.ec -- progress-report 0 > ./resultats/matching8_seq.txt
./exact_cover_seq --in ./instances/matching9.ec -- progress-report 0 > ./resultats/matching9_seq.txt
./exact_cover_seq --in ./instances/matching10.ec -- progress-report 0 > ./resultats/matching10_seq.txt

#MPI
./exact_cover_mpi --in ./instances/bell12.ec -- progress-report 0 > ./resultats/bell12_mpi.txt
./exact_cover_mpi --in ./instances/bell13.ec -- progress-report 0 > ./resultats/bell13_mpi.txt
./exact_cover_mpi --in ./instances/bell14.ec -- progress-report 0 > ./resultats/bell14_mpi.txt

./exact_cover_mpi --in ./instances/matching8.ec -- progress-report 0 > ./resultats/matching8_mpi.txt
./exact_cover_mpi --in ./instances/matching9.ec -- progress-report 0 > ./resultats/matching9_mpi.txt
./exact_cover_mpi --in ./instances/matching10.ec -- progress-report 0 > ./resultats/matching10_mpi.txt
