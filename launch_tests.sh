#! /bin/sh

make -s #silencieux

./exact_cover_omp --in ./instances/bell12.ec > ./resultats/bell12.txt
./exact_cover_omp --in ./instances/bell13.ec > ./resultats/bell13.txt

