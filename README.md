## Setting up python 3 virtual environment on o2

## Running batch jobs on o2

To create a python 3 virtual environment named 'venv1' (not all lines are necessary):
*   `module load gcc/6.2.0`
*   `module avail python`
*   `module load python/3.6.0`
*   `which virtualenv`
*   `virtualenv venv1`

To activate virtual environment venv1:
*   `source venv1/bin/activate`

From here you can use python as you usually would (e.g., `python script.py`).

Install necessary packages:
*   `pip3 install pyyaml numpy scipy scikit-image torch torchvision wget tensorboardX h5py`

To deactivate the active virtual environment use `deactivate`.

## Setting up network architecture

## Miscellaneous 
