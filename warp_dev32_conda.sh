#!/bin/bash

mkdir -p $GROUP_HOME/$USER/conda
#install warp environment in your group_home directory rather than your own directory (warp is too big to have your home directory)
export $MAMBA_ROOT_PREFIX=$GROUP_HOME/$USER/conda

micromamba create -n warp warp==2.0.0dev32 ipykernel -c warpem -c nvidia/label/cuda-11.8.0 -c pytorch -c conda-forge -y
micromamba activate warp

#create ipykernel with warp environment
python3 -m ipykernel install --name warp --display-name "Python3.11 (warp/2.0.0dev32)" --user

# Define the functions to add to ~/.bashrc
FUNCTIONS_CONTENT=$(cat << 'EOF'

# setting custom mamba root prefixes (warp requires this)
mamba_group_home() {
    export MAMBA_ROOT_PREFIX=$GROUP_HOME/$USER/conda
    echo "MAMBA_ROOT_PREFIX set to $MAMBA_ROOT_PREFIX"
}

# activating warp environment
warp_activate() {
    mamba_group_home
    micromamba activate warp
    export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$CONDA_PREFIX/lib64:$LD_LIBRARY_PATH
}
EOF
)

# Check if the functions already exist in ~/.bashrc
if grep -q "mamba_group_home" ~/.bashrc; then
    echo "The mamba_group_home and warp_activate functions are already in ~/.bashrc."
else
    # Append the functions to ~/.bashrc
    echo "$FUNCTIONS_CONTENT" >> ~/.bashrc
    echo "The mamba_group_home and warp_activate functions have been added to ~/.bashrc."
fi
