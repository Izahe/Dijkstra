# Dijkstra's Algorithm

## Required Modules

For all timed runs, we used NVIDIA's compiler

> module load nvhpc/21.7


## Compiling the code

The files follow the following format, where you can change the size of the matrix and parallelization. 

> dijkstra_\<SIZE OF MATRIX\>_\<PARALLELIZATION METHOD>.c

We currently support 9, 50, and 100 as matrix sizes. 

If you'd like to compile this code yourself, you can refer to the table below for commands.

| Parallelization Method      | Command (Replace "X" with 9, 50, or 100) |
| ----------- | ----------- |
| Serial Code |  nvc dijkstra_X_serial.c -o \<desired file name> | 
| OpenMP CPU      | nvc -mp dijkstra_X_OMP.c -o \<desired file name>       |
| OpenACC GPU & Multicore CPU  | nvc -acc -ta=tesla -Minfo=accel dijkstra_X_ACC.c -o \<desired file name>        |

NOTE: You will have to manually alter the batch script for different numbers of threads or gpus. 

## Running the code
To run this code, you must use a batch script to run the file on the bridges2 machine.
> sbatch \<name of script file>
## Viewing output files

The output files can be examined using any text editor

> nano slurm-XXXXXXXXX.out

For the profiler, you will need to copy the file to your local system and open the file using NSight Systems
