#!/bin/bash
#SBATCH -n 4
#SBATCH --mem=8000
#SBATCH -p classroom
#SBATCH -J hifiasm

### Load Modules
module load hifiasm/0.5-IGB-gcc-8.2.0

# Step 1: make working directory 
mkdir dataset1

# Step 2: run assembly
hifiasm -o dataset1/full.asm -f 0 -t $SLURM_NPROCS -a 3 dataset1.fastq.gz 2> dataset1/full.log

