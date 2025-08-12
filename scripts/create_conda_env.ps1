# PowerShell script to create a conda environment from environment.yml
# Ensure conda is initialized in your PowerShell session before running this script

conda env create -f environment.yml
conda activate chatgpt_python_env