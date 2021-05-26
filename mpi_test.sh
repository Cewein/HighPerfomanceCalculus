#OMP
max=8
rm -r resultats/MPI
mkdir resultats/MPI

for ((i=1; i <= $max; i++))
do
    touch ./resultats/MPI/bell12_mpi_$i.txt
    touch ./resultats/MPI/bell13_mpi_$i.txt
    touch ./resultats/MPI/bell14_mpi_$i.txt


    touch ./resultats/MPI/matching8_omp_$i.txt
    touch ./resultats/MPI/matching9_omp_$i.txt
    touch ./resultats/MPI/matching10_omp_$i.txt
done



for ((i=1; i <= $max; i++))
do
    mpiexec --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/bell12.ec --progress-report 0 > ./resultats/MPI/bell12_mpi_$i.txt
    mpiexec --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/bell13.ec --progress-report 0 > ./resultats/MPI/bell13_mpi_$i.txt
    mpiexec --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/bell14.ec --progress-report 0 > ./resultats/MPI/bell14_mpi_$i.txt


    mpiexec --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/matching8.ec --progress-report 0 > ./resultats/MPI/matching8_omp_$i.txt
    mpiexec --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/matching9.ec --progress-report 0 > ./resultats/MPI/matching9_omp_$i.txt
    mpiexec --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/matching10.ec --progress-report 0 > ./resultats/MPI/matching10_omp_$i.txt
done
