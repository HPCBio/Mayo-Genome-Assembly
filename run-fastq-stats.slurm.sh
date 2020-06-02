#!/bin/bash
#SBATCH -n 1
#SBATCH --mem=4000
#SBATCH -p classroom
#SBATCH -J fastq-stats 

### Load Modules
module load seqkit/0.12.1 

### Run app on file
seqkit stats dataset*.fastq.gz > stats.txt 

