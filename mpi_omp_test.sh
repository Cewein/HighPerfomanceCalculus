#OMP + MPI

echo -n > resultats/bell12_OMP_mpi.txt
echo -n > resultats/bell13_OMP_mpi.txt
echo -n > resultats/bell14_OMP_mpi.txt

echo -n > resultats/matching8_OMP_mpi.txt
echo -n > resultats/matching9_OMP_mpi.txt
echo -n > resultats/matching10_OMP_mpi.txt

n=$1

max=$2
for ((i=1; i <= $max; i++))
do
    m=$((i*n))
    echo "lauching scripts on $m process"
    echo -ne "$m: " >> resultats/bell12_OMP_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_OMP/exact_cover_mpi_omp --in ./instances/bell12.ec --progress-report 0 >> resultats/bell12_OMP_mpi.txt
    
    echo -ne "$m: " >> resultats/bell13_OMP_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_OMP/exact_cover_mpi_omp --in ./instances/bell13.ec --progress-report 0 >> resultats/bell13_OMP_mpi.txt
    
    echo -ne "$m: " >> resultats/bell14_OMP_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_OMP/exact_cover_mpi_omp --in ./instances/bell14.ec --progress-report 0 >> resultats/bell14_OMP_mpi.txt



    echo -ne "$m: " >> resultats/matching8_OMP_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_OMP/exact_cover_mpi_omp --in ./instances/matching8.ec --progress-report 0  >> resultats/matching8_OMP_mpi.txt
    
    echo -ne "$m: " >> resultats/matching9_OMP_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_OMP/exact_cover_mpi_omp --in ./instances/matching9.ec --progress-report 0  >> resultats/matching9_OMP_mpi.txt
    
    echo -ne "$m: " >> resultats/matching10_OMP_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_OMP/exact_cover_mpi_omp --in ./instances/matching10.ec --progress-report 0 >> resultats/matching10_OMP_mpi.txt
done
