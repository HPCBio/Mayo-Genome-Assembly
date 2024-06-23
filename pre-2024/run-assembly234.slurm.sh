#!/bin/bash
#SBATCH -n 4
#SBATCH --mem=8000
#SBATCH -p classroom
#SBATCH -J hifiasm

### Load Modules
module load hifiasm/0.5-IGB-gcc-8.2.0

# Step 1: make working directories (yes you can do more than one)
mkdir dataset2 dataset3 dataset4

# Step 2: run assemblies
hifiasm -o dataset2/half.asm -f 0 -t $SLURM_NPROCS -a 3 dataset2.fastq.gz 2> dataset2/half.log
hifiasm -o dataset3/quarter.asm -f 0 -t $SLURM_NPROCS -a 3 dataset3.fastq.gz 2> dataset3/quarter.log
hifiasm -o dataset4/tenth.asm -f 0 -t $SLURM_NPROCS -a 3 dataset4.fastq.gz 2> dataset4/tenth.log

