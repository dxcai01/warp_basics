This repo contains all the scripts to create a conda environment for a warp installation and an ipython notebook to guide and streamline tomogram preprocessing through warp for new users.

You will need:
1. a conda distribution (miniconda or miniforge is preferred)
2. a conda environment containing warp
3. your data

To streamline installation of a conda distribution, run the provided micromamba installation script

chmod +x install_micromamba.sh

./install_micromamba.sh

Then run the provided warp_dev32_conda.sh script to install warp in your conda environment.

chmod +x warp_dev32_conda.sh

./warp_dev32_conda.sh

If you already have a conda distribution installed, you will have to edit the warp_dev32_conda.sh script to correspond with your installed distro and your libraries.

Once you get your data from the cryo-ET session, assemble your working directory like this.

TOMOGRAM_WORKING_DIRECTORY/
├── frames ##symlink your raw frames into this directory to be safe
├── mdocs ##you will copy and rename the .mdoc files that tomo5 will generate into this directory (script is in the notebook). This will effectively rename the tomogram. We will use a better regex system (TS_XXX, where XXX is digits) than tomo5 output, which will let us send the tomograms to different software suites more easily
├── rawdata ##place rawdata in this directory
│   ├── frames ##all your raw frames should be moved here
│   ├── mdoc ##all your raw mdoc files should be moved here
│   ├── tiltseries ##all your tiltseries .mrc files should be moved here
│   └── tomo5setupstuff ##this is all metadata or extra files used in the actual tomo5 session. It's not necessary for processing, but you can move the data here to preserve it just in case.
│       ├── Batch
│       ├── SearchMaps
│       ├── Session.dm
│       └── Thumbnails
└── warp_processing.ipynb ##copied over from wherever you saved it.

Now just allocated 1 GPU, 10 CPU, and 12g MEM, activate your environment, and open the notebook with either vscode or jupyterlab. 

You should now be ready to go
