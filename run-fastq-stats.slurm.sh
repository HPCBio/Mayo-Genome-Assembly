#!/bin/bash
#SBATCH -n 1
#SBATCH --mem=4000
#SBATCH -p classroom
#SBATCH -J fastq-stats 

export MODULEPATH=/home/classroom/hpcbio/mayo_workshop/02_Genome_Assembly/module/:$MODULEPATH

### Load Modules
module load seqkit-0.12 

### Run app on file
seqkit stats dataset*.fastq.gz > stats.txt 

