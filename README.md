# Intro to R & Bioconductor

* HMS-RC training repo - https://github.com/hmsrc/user-training
* Intro to R and Bioconductor (presentation) - https://github.com/hmsrc/user-training/blob/master/Intro_to_R_and_Bioconductor.pdf


### Connect to O2
```
ssh -Y -L $PORT:127.0.0.1:$PORT <your_HMS_ID>@o2.hms.harvard.edu
```

### Running RStudio (IDE) on O2

Load modules
```
module load rstudio_launcher/1.0
module load gcc/6.2.0
module load R/4.1.1
module load git/2.9.5
```
Launch rstudio
```
srun -t 0-2:00 --pty -p interactive -c 1 --mem=2G --tunnel $PORT:$PORT RStudio_launcher.sh $PORT
```
