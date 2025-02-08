# **Description**

Molecular Dynamics (MD) is a powerful technique to predict the time-dependent behavior of various molecular systems. Based on Newton's equations of motion, MD simulates atoms' acceleration and movement direction to predict their positions one timestep further (1 fs – 2 fs) <sup>[1]</sup>. Due to this aspect, MD can be highly computationally intensive and can generate a significant number of conformational states for analysis. 
To address these challenges, I developed a toolkit compatible with **NAMD** <sup>[2]</sup>, an open-source suite for performing MD simulations. 

<p align="center">
  <img src="pimavanserin_5ht2a.gif" width="500"><br><br>
  <span style="font-size: 4px; color: #777;">Simulation of Pimavanserin binding to 5-HT2A receptor (<strong>PDB:8ZMG</strong>). Complex was prepared using <strong>CHARMM-GUI</strong> <sup>[3]</sup>. Configuration of simulation box was adapted from Ramírez-Anguita, Juan Manuel, et al. <sup>[4]</sup>. VMD <sup>[5]</sup> was used to visualize the L-R complex</span>
</p>

<br><br>

This repository presents tools to accelerate and support MD simulations with NAMD software. It consists of two components:
- **`namd_GPU_script.sh`**: A script to automate the process of launching NAMD analyses.
- **`md_notebook.ipynb`**: A Python notebook to perform clustering and centroid calculations based on trajectory and topology files.

---

# **Content**

### **a) `run_namd.sh`**
A Bash script that launches NAMD simulation. 

#### Usage:
- To run the script on your local computer:
   ```bash
   bash namd_GPU_script.sh
   ```
- To execute it using SLURM:
   ```bash
   sbatch namd_GPU_script.sh
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

# **References**
1. Graham Patrick, "An Introduction to Medicinal Chemistry"
2. https://www.ks.uiuc.edu/Research/namd/
3. https://www.charmm-gui.org/
4. Ramírez-Anguita, Juan Manuel, et al. "Membrane Cholesterol Effect on the 5-HT2A Receptor: Insights into the Lipid-Induced Modulation of an Antipsychotic Drug Target." *Bioorganic & Medicinal Chemistry*, vol. 28, no. 10, 2021, pp. 1234-1245. DOI: 10.1002/bab.1608.
5. https://www.ks.uiuc.edu/Research/vmd/


