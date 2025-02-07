# **Description**

Molecular Dynamics (MD) is a powerful technique to predict the time-dependent behavior of various molecular systems. Based on Newton's equations of motion, MD simulates atoms' acceleration and movement direction to predict their positions one timestep further (**1 fs** – **2 fs**). Due to this aspect, MD can be highly computationally intensive and can generate a significant number of conformational states for analysis. 

![Molecular Dynamics Simulation](pimavanserin_5ht2a.gif)


To address these challenges, I developed a toolkit compatible with **NAMD**, an open-source suite for performing MD simulations. 

This repository presents tools to accelerate and support MD simulations with NAMD software. It consists of two components:
- **`run_namd.sh`**: A script to automate the process of launching NAMD analyses.
- **`md_notebook.ipynb`**: A Python notebook to perform clustering and centroid calculations based on trajectory and topology files.

---

# **Content**

### **a) `run_namd.sh`**
A Bash script that launches NAMD simulation. 

#### Usage:
- To run the script on your local computer:
   ```bash
   bash run_namd.sh
   ```
- To execute it using SLURM:
   ```bash
   sbatch run_namd.sh
   ```

Paste this file into the directory containing the input files for NAMD before running one of abovementioned commands.

---

### **b) `md_notebook.ipynb`**
A Python notebook designed to:
1. Perform clustering of the obtained trajectory file.
2. Calculate centroids.

#### Usage:
1. Open the notebook.
2. Run all cells.
3. In cell number 3, provide the path to the directory containing the topology and trajectory files of the molecule being analyzed.
4. In cell number 4, provide number of expected clusters.
---

