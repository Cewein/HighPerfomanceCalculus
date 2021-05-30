#slave
echo -n > resultats/bell12_ms.txt
echo -n > resultats/bell13_ms.txt
echo -n > resultats/bell14_ms.txt

echo -n > resultats/matching8_ms.txt
echo -n > resultats/matching9_ms.txt
echo -n > resultats/matching10_ms.txt

n=$1

max=$2
for ((i=1; i <= $max; i++))
do
    m=$((i*n))
    echo "lauching scripts on $m process"
    echo -ne "$m: " >> resultats/bell12_ms.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_SLAVE_MASTER/exact_cover_mpi_slave_master --in ./instances/bell12.ec --progress-report 0 >> resultats/bell12_ms.txt
    
    echo -ne "$m: " >> resultats/bell13_ms.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_SLAVE_MASTER/exact_cover_mpi_slave_master --in ./instances/bell13.ec --progress-report 0 >> resultats/bell13_ms.txt
    
    echo -ne "$m: " >> resultats/bell14_ms.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_SLAVE_MASTER/exact_cover_mpi_slave_master --in ./instances/bell14.ec --progress-report 0 >> resultats/bell14_ms.txt



    echo -ne "$m: " >> resultats/matching8_ms.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_SLAVE_MASTER/exact_cover_mpi_slave_master --in ./instances/matching8.ec --progress-report 0  >> resultats/matching8_ms.txt
    
    echo -ne "$m: " >> resultats/matching9_ms.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_SLAVE_MASTER/exact_cover_mpi_slave_master --in ./instances/matching9.ec --progress-report 0  >> resultats/matching9_ms.txt
    
    echo -ne "$m: " >> resultats/matching10_ms.txt
    mpiexec --mca btl_base_warn_component_unused 0 --hostfile $OAR_NODEFILE -N $i ./src/ver_MPI_SLAVE_MASTER/exact_cover_mpi_slave_master --in ./instances/matching10.ec --progress-report 0 >> resultats/matching10_ms.txt
done
