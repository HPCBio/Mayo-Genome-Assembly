#!/bin/bash
#SBATCH -n 1
#SBATCH --mem=2000
#SBATCH -p classroom
#SBATCH --mail-type=END,FAIL
#SBATCH -J GFA-to-FASTA

### Load Modules
module load gfatools/0.4-IGB-gcc-4.9.4

# Convert GFA (reference graph) into FASTA (one at a time)
gfatools gfa2fa dataset1/full.asm.p_ctg.gfa > dataset1/full.asm.p_ctg.fasta
gfatools gfa2fa dataset2/half.asm.p_ctg.gfa > dataset2/half.asm.p_ctg.fasta
gfatools gfa2fa dataset3/quarter.asm.p_ctg.gfa > dataset3/quarter.asm.p_ctg.fasta
gfatools gfa2fa dataset4/tenth.asm.p_ctg.gfa > dataset4/tenth.asm.p_ctg.fasta

# Convert GFA (reference graph) into FASTA (using a loop)
for gfa in dataset*/*.p_ctg.gfa; do
    FASTA="${gfa%.gfa}.loop.fasta"
    gfatools gfa2fa $gfa > $FASTA
done

