# 🔬 Warp Tomogram Preprocessing Basics

<div align="center">

![Cryo-ET](https://img.shields.io/badge/Cryo--ET-Tomography-blue?style=for-the-badge)
![Python](https://img.shields.io/badge/Python-Notebook-orange?style=for-the-badge)

*A complete guide and toolkit for streamlined tomogram preprocessing through Warp*

</div>

---

## 📋 Overview

This repository contains all the scripts to create a conda environment for a Warp installation and an IPython notebook to guide and streamline tomogram preprocessing through Warp for new users.

## 🚀 Quick Start

```bash
git clone https://github.com/dxcai01/warp_basics.git
cd warp_basics
```

## ✅ Requirements

Before getting started, ensure you have:

- 🐍 **Conda distribution** (miniconda or miniforge preferred)
- ⚡ **Warp environment** (we'll help you set this up!)
- 📊 **Your cryo-ET data**

---

## 🛠️ Installation

### Step 1: Install Micromamba *(Optional)*

> 💡 **Tip:** Skip this step if you already have conda installed

```bash
chmod +x install_micromamba.sh
./install_micromamba.sh
```

### Step 2: Install Warp Environment

```bash
chmod +x warp_dev32_conda.sh
./warp_dev32_conda.sh
```

> ⚠️ **Note:** If you already have a conda distribution installed, edit the `warp_dev32_conda.sh` script to match your setup.

### Step 3: Download Tutorial Data *(Optional)*

> Not necessary if you have your own datasets

```bash
chmod +x empiar_10164_download.sh
./empiar_10164_download.sh
```

---

## 📁 Data Organization

Organize your working directory following this structure:

```
📂 TOMOGRAM_WORKING_DIRECTORY/
├── 🔗 frames/                     # Symlinked raw frames (safety backup)
├── 📄 mdocs/                      # Renamed .mdoc files from tomo5
├── 📂 rawdata/
│   ├── 🎬 frames/                # Raw frame files
│   ├── 📋 mdoc/                  # Original mdoc files
│   ├── 🎥 tiltseries/            # Tiltseries .mrc files
│   └── ⚙️ tomo5setupstuff/       # Tomo5 session metadata
│       ├── 📁 Batch/
│       ├── 🗺️ SearchMaps/
│       ├── 💾 Session.dm
│       └── 🖼️ Thumbnails/
└── 📓 warp_processing.ipynb      # Main processing notebook
```

### 📝 Directory Details

| Directory | Purpose |
|-----------|---------|
| **mdocs/** | Renamed .mdoc files with improved naming (`TS_XXX`) for better software compatibility |
| **tomo5setupstuff/** | Archived tomo5 metadata - not required for processing but good to keep |

---

## 🏃‍♂️ Running the Workflow

### System Requirements
- 🖥️ **GPU:** 1 unit
- ⚡ **CPU:** 10 cores  
- 💾 **RAM:** 12GB

### Launch Steps

1. **Activate your environment**
   ```bash
   conda activate your-warp-env
   ```

2. **Start your preferred interface**
   ```bash
   # Option A: VS Code
   code warp_processing.ipynb
   
   # Option B: JupyterLab
   jupyter lab warp_processing.ipynb
   ```

---

<div align="center">

## 🎉 Ready to Process!

*You're all set to start preprocessing your tomograms with Warp!*

---

**Questions?** Open an issue • **Contributions?** Submit a PR • **License:** MIT

</div>
