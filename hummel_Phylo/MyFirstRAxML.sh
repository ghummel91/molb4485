#!/bin/bash
#SBATCH -J RAxML
#SBATCH -n 1
#SBATCH -t 60:00
#SBATCH --mem=20g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ghummel@uwyo.edun

#SBATCH --ntasks-per-node=8
#SBATCH --account=inbre-train
#SBATCH partition=inv-inbre

echo "Starting raxmlHPC run at $(date)"

module load swset gcc raxml

raxmlHPC-PTHREADS-AVX -T 8 -f a -m GTRGAMMA -p 618 -N 50  -x 309 -s KnownBears.aln -n KnownBearTree -w /project/inbre-train/inbre011/molb4485/hummel_Phylo/BearTrees -o GiantPanda

echo "RAxML has finished at $(date)"
