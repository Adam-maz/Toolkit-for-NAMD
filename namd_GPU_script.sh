#!/usr/bin/bash
#SBATCH --job-name=namd_slurm
#SBATCH --partition=dgx_A100
#SBATCH --gpus=1
#SBATCH --cpus-per-task=40
#SBATCH --mem-per-cpu=16G
#SBATCH --output=job_%j.out
#SBATCH --error=job_%j.err
nvidia-smi -L


start=$(date)
echo "Job started at $start" > running_report.txt
for i in {1..6}
do
    echo " "
    echo "****************************************"
    echo "Step "$i" running. Job started:" $(date)
    namd_path/namd3 +p40 +setcpuaffinity +devices 0 step6.$i'_'equilibration.inp > step6.$i'_'equilibration.out && \
    echo "Step "$i" completed!! Job ended:" $(date)
    echo "****************************************"
    echo " "
done

echo " "
echo "****************************************"
echo "Final MD Simulation. Job started:" $(date)
namd_path/namd3 +p6 +setcpuaffinity +devices 0 step7_production.inp > step7_production.out
echo "Final MD Simulation. Job ended:" $(date)
echo "****************************************"
echo " "
end=$(date)
echo "Job ended at $end" >> running_report.txt
