#Add the mpiCC and nvcc compiler in the path
export PATH=/usr/local/openmpi/bin:/usr/local/cuda/bin:$PATH make
export PATH=pwd/bin:$PATH
all:
	mpicc -O3 -g -L/opt/mpiP-3.5/lib -lmpiP -lbfd -lunwind -lm -o jacobi_parallel_mpi.x jacobi_parallel_mpi.c
