# Instructions for Running the Script  

It is **strongly recommended** to read this short instruction before running the script.  

You **can (or even should)** adjust hardware usage within this script.  
To do so, follow the instructions below:  

## **SLURM Job Configuration**  

The section below is dedicated to running computations in **SLURM** using the `sbatch` command (not on your local machine):  

```bash
#SBATCH --job-name=namd_slurm   # Title of your job, feel free to edit  
#SBATCH --partition=dgx_A100    # Specifies which nodes in your cluster are used for computing  
#SBATCH --gpus=1                # Number of GPUs allocated for the job  
#SBATCH --cpus-per-task=40      # Number of CPUs allocated for the job  
```

## **Computation Execution**  

The following section applies both to computations on SLURM and on a local machine:  

```bash
namd_path/namd3 +p40 +setcpuaffinity +devices 0 step6.${i}_equilibration.inp > step6.${i}_equilibration.out && \
namd_path/namd3 +p6 +setcpuaffinity +devices 0 step7_production.inp > step7_production.out
```

### **Explanation of Parameters:**  
- **`+p40`** → Refers to 40 CPUs allocated for the computation.  
  - Check the number of available CPUs on your cluster/local machine to set an appropriate value.  
- **`+devices 0`** → Refers to the **first GPU**.  
  - You can assign multiple GPUs to accelerate computation.  

---
