#!/bin/bash
#SBATCH -A see200002p
#SBATCH -p RM-shared
#SBATCH -J OMP_9
#SBATCH --mail-user=kelvingy@udel.edu
#SBATCH --mail-type=ALL

#SBATCH -N 1
#SBATCH -n 4

#SBATCH -t 00:30:00
nvc -mp dijkstra_9_OMP.c -o dijkstra_9_OMP
./dijkstra_9_OMP
