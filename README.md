## Setting up python 3 virtual environment on o2

To create a python 3 virtual environment named `venv1` (not all lines are necessary):
*   `module load gcc/6.2.0`
*   `module avail python`
*   `module load python/3.6.0`
*   `which virtualenv`
*   `virtualenv venv1`

To activate virtual environment `venv1`:
*   `source venv1/bin/activate`

From here you can use python as you usually would (e.g., `python script.py`).

Install necessary packages:
*   `pip3 install pyyaml numpy scipy scikit-image torch torchvision wget tensorboardX h5py`

To deactivate the active virtual environment use `deactivate`.

## Running batch jobs on o2

Unless the job is very small, don't run scripts directly on the cluster or you will get kindly chided. These two sources on [Slurm](https://wiki.rc.hms.harvard.edu/display/O2/Using+Slurm+Basic)  and [GPUs](https://wiki.rc.hms.harvard.edu/display/O2/Using+O2+GPU+resources) explain everything that is needed. To submit a batch job use `sbatch <myjob.sh>`. If you want to run `shell_1_gpu.sh`, for example, you'll need to edit the virtual environment and, possibly, which configuration file you'd like to use. Note there is currently no option to choose a different dataset. The data named `tcga.h5` in the data folder will be used. 

## Miscellaneous 

If you are using an FTP, set the hostname to "transfer.rc.hms.harvard.edu" and the port to "22".
