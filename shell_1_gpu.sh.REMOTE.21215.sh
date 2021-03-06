#!/bin/bash
#SBATCH -c 4                               # Request four cores
#SBATCH -N 1                               # Request one node (if you request more than one core with -c, also using
#SBATCH -t 0-00:30                         # Runtime in D-HH:MM format
#SBATCH -p gpu
#SBATCH --gres=gpu:4
#SBATCH --mem=2G                           # Memory total in MB (for all cores)
#SBATCH -o hostname_%j.out                 # File to which STDOUT will be written, including job ID
#SBATCH -e hostname_%j.err                 # File to which STDERR will be written, including job ID
#SBATCH --mail-type=ALL                    # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=beaucoker@g.harvard.edu   # Email to which notifications will be sent

module load cuda/9.0 # for the GPU

source venv6/bin/activate # Change venv6 to your python virtual environment (which should be in the working directory)

python3 train_tcga.py config/tcga.yaml # Select the .yaml file here

deactivate
