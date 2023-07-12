#!/bin/bash

#SBATCH --job-name=inversion_sim
#SBATCH --cpus-per-task=2
#SBATCH --mem=5000M
#SBATCH --time=0-02:00:00
#SBATCH --mail-type=ALL
#SBATCH --output=log/%x-%j.out
#SBATCH --error=log/%x-%j.err

module load python3/3.11
python3 inversion_sim.py $1 $2
