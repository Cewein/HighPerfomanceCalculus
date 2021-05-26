#OMP

echo -n > resultats/bell12_mpi.txt
echo -n > resultats/bell13_mpi.txt
echo -n > resultats/bell14_mpi.txt

echo -n > resultats/matching8_mpi.txt
echo -n > resultats/matching9_mpi.txt
echo -n > resultats/matching10_mpi.txt

n=$1

max=$2
for ((i=1; i <= $max; i++))
do
    m=$((i*n))
    echo "lauching scripts on $m process"
    echo -ne "$m: " >> resultats/bell12_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/bell12.ec --progress-report 0 >> resultats/bell12_mpi.txt
    
    echo -ne "$m: " >> resultats/bell13_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/bell13.ec --progress-report 0 >> resultats/bell13_mpi.txt
    
    echo -ne "$m: " >> resultats/bell14_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/bell14.ec --progress-report 0 >> resultats/bell14_mpi.txt



    echo -ne "$m: " >> resultats/matching8_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/matching8.ec --progress-report 0  >> resultats/matching8_mpi.txt
    
    echo -ne "$m: " >> resultats/matching9_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/matching9.ec --progress-report 0  >> resultats/matching9_mpi.txt
    
    echo -ne "$m: " >> resultats/matching10_mpi.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI/exact_cover_mpi --in ./instances/matching10.ec --progress-report 0 >> resultats/matching10_mpi.txt
done
