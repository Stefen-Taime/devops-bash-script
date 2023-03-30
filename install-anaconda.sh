#!/bin/bash

# Update package list and install prerequisites
sudo apt-get update
sudo apt-get install -y wget

# Download the Anaconda installer
wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh

# Verify the hash code integrity of the package
sha256sum Anaconda3-2022.05-Linux-x86_64.sh

# Run the Anaconda bash shell script with auto approval
bash Anaconda3-2022.05-Linux-x86_64.sh -b -p $HOME/anaconda3

# Add Anaconda to the PATH variable
echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> $HOME/.bashrc
source $HOME/.bashrc

# Create a virtual environment named my_env with Python 3.8
conda create -n my_env python=3.8 -y

# Activate the virtual environment
conda activate my_env

# Print success message
echo "Anaconda installed successfully, and the virtual environment my_env with Python 3.8 has been created and activated."
