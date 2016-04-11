#!/bin/bash
#SBATCH --job-name=example
#SBATCH --output=example-%j.out
#SBATCH --error=example-%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=4096

# load your modules here
module load gaussian

GAUSS_SCRDIR=$HOME/scratch-midway/gaussian-work
export GAUSS_SCRDIR

# Submit g09 job   
# g09 job.inp        
# job.inp is the name of the input file to be executed
# The job output will be written to a file job.log
# The checkpoint file will be written to job.chk

g09 ch4scan.inp
