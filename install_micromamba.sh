#!/bin/bash

#make directories where micromamba will be installed
mkdir -p $HOME/software
cd $HOME/software

#install micromamba
"${SHELL}" <(curl -L micro.mamba.pm/install.sh)

# Define the functions to add to ~/.bashrc
BASHRC_ADDITIONS=$(cat << 'EOF'
#ensure micromamba directory is always readable
export PATH=$HOME/software/micromamba:$PATH

#activate micromamba
eval "$($HOME/software/micromamba shell hook --shell bash)"
}
EOF
)

echo "$BASHRC_ADDITIONS" >> ~/.bashrc