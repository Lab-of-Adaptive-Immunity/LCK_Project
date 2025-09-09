## About

This repository contiains scripts necessary for replication of analyses presented in paper of Uleri et al.: 

LCK-deficient CD8 T cells show reduced proliferation and enhanced effector T cells in mice

Link: COMING SOON!

Data Accession: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE304760 

The repository also provides an R script to perform a re-analysis of data from Nishijima et al. paper (https://pubmed.ncbi.nlm.nih.gov/34930780/). The related data that were used here are located [on this page](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE155331).

The GitHub repository contains following files:

* **Exp21_W1_preparation.Rmd:** Used for demultiplexing of samples in data and generation of initial data. It creates Datasets directory and saves file "exp21W1_init_all.rds" into it
* **Metadata_table.csv:** Meta data specifying samples, used by the above file.
* **LCK_Library.csv:** A file needed to run mapping by 10X Cell ranger. **The /path/to/GitHub/directory needs to be replaced by *absolute* path to where this repository was cloned (ending with LCK_Project).
* **Feature_Reference.csv:** A Feature reference file to be used with cellranger.

Before running analysis, you need to make sure you have:
* Cell ranger 5.0.1 installed that can be run with cellranger command;
* All required packages for R (see scripts);
* GRCm38 reference/transcriptome, which was made according to the instructions for Cell ranger v5.0.1 from Ensembl primary assembly MM file, version 102);

## Analysis of Adrenalitis single cell data

1. Clone this project. You'll end up with Project_Adrenalitis directory.

```
git clone https://github.com/Lab-of-Adaptive-Immunity/LCK_Project.git
cd Project_Adrenalitis
```

2. Create Fastq directory and go into it.

```
mkdir Fastqs
cd Fastqs
```

3. Download Fastq files (link given above, follow instructions on NCBI site). **These files must be stored in Fastqs directory!** Once done, return into root of the project. 

```
cd .. # Return to root of project
```

4. Perform mapping. Before starting with mapping itself, you need to have your GRCm38 v102 reference ready (see above) and you need to modify Adrenals_Library.csv by replacing **/path/to/GitHub/directory/** with **your current path** (ie. if you cloned directory to path /home/johndoe/, then the /path/to/GitHub/directory/ would be replaced by /home/johndoe/Project_Adrenalitis/). Once done, you run the nalaysis with command: 

```
cellranger count --id=Exp_21_W1 --transcriptome=/path/to/transcriptome/GRCm38_v102 --libraries=Library_E06_W3.csv --feature-ref=FeatureReference.csv --localcores=8
```

where /path/to/transcriptome/GRCm38_v102 is path to your reference/transcriptome (see above) and FeatureReference.csv is provided here (see above; it is also available in GEON NCBI but it lacks one sample that is not used at the end). --localcores specifies the number of cores and number should be lower or equal to the number of cores your PC has.

6. Run, ideally in RStudio:

* Exp21_W1_preparation.Rmd



