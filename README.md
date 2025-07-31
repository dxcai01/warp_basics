Here's a nicely formatted version of your instructions:

# Warp Tomogram Preprocessing

This repository contains all the scripts to create a conda environment for a Warp installation and an IPython notebook to guide and streamline tomogram preprocessing through Warp for new users.

## Requirements

You will need:
- A conda distribution (miniconda or miniforge is preferred)
- A conda environment containing Warp
- Your data

## Installation

### 1. Install Micromamba (Optional)

To streamline installation of a conda distribution, run the provided micromamba installation script:

```bash
chmod +x install_micromamba.sh
./install_micromamba.sh
```

### 2. Install Warp

Run the provided Warp installation script to install Warp in your conda environment:

```bash
chmod +x warp_dev32_conda.sh
./warp_dev32_conda.sh
```

> **Note:** If you already have a conda distribution installed, you will need to edit the `warp_dev32_conda.sh` script to correspond with your installed distribution and libraries.

## Data Organization

Once you get your data from the cryo-ET session, organize your working directory as follows:

```
TOMOGRAM_WORKING_DIRECTORY/
├── frames/                     # Symlink your raw frames into this directory to be safe
├── mdocs/                      # Copy and rename .mdoc files from tomo5 here
├── rawdata/
│   ├── frames/                # All your raw frames should be moved here
│   ├── mdoc/                  # All your raw mdoc files should be moved here
│   ├── tiltseries/            # All your tiltseries .mrc files should be moved here
│   └── tomo5setupstuff/       # Metadata/extra files from tomo5 session
│       ├── Batch/
│       ├── SearchMaps/
│       ├── Session.dm
│       └── Thumbnails/
└── warp_processing.ipynb      # Copy from wherever you saved it
```

### Directory Notes

- **mdocs/**: This directory will contain renamed .mdoc files using a better regex system (`TS_XXX`, where XXX is digits) than the tomo5 output, making it easier to send tomograms to different software suites.
- **tomo5setupstuff/**: Contains metadata and extra files from the tomo5 session. Not necessary for processing, but useful to preserve just in case.

## Running the Notebook

1. Allocate resources: **1 GPU, 10 CPU, 12GB RAM**
2. Activate your conda environment
3. Open the notebook with either VS Code or JupyterLab

You should now be ready to go! 🚀
