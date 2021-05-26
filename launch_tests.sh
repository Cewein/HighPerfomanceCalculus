#! /bin/sh

make -s #silencieux

#OMP

./src/ver_OMP/exact_cover_omp --in ./instances/bell12.ec --progress-report 0 > ./resultats/bell12_omp.txt
./src/ver_OMP/exact_cover_omp --in ./instances/bell13.ec --progress-report 0 > ./resultats/bell13_omp.txt
./src/ver_OMP/exact_cover_omp --in ./instances/bell14.ec --progress-report 0 > ./resultats/bell14_omp.txt

./src/ver_OMP/exact_cover_omp --in ./instances/matching8.ec --progress-report 0 > ./resultats/matching8_omp.txt
./src/ver_OMP/exact_cover_omp --in ./instances/matching9.ec --progress-report 0 > ./resultats/matching9_omp.txt
./src/ver_OMP/exact_cover_omp --in ./instances/matching10.ec --progress-report 0 > ./resultats/matching10_omp.txt

#SEQ
./src/ver_seq/exact_cover_seq --in ./instances/bell12.ec --progress-report 0 > ./resultats/bell12_seq.txt
./src/ver_seq/exact_cover_seq --in ./instances/bell13.ec --progress-report 0 > ./resultats/bell13_seq.txt
./src/ver_seq/exact_cover_seq --in ./instances/bell14.ec --progress-report 0 > ./resultats/bell14_seq.txt

./src/ver_seq/exact_cover_seq --in ./instances/matching8.ec --progress-report 0 > ./resultats/matching8_seq.txt
./src/ver_seq/exact_cover_seq --in ./instances/matching9.ec --progress-report 0 > ./resultats/matching9_seq.txt
./src/ver_seq/exact_cover_seq --in ./instances/matching10.ec --progress-report 0 > ./resultats/matching10_seq.txt
