## About

This repository contiains scripts necessary for replication of analyses presented in paper of Uleri et al.: 

**LCK deficiency in CD8 T cells leads to reduced proliferation and increased effector T-cell formation in mice**

Link: https://www.biorxiv.org/content/10.1101/2025.08.28.672860v1

Data Accessions: 

* https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE342585 
* https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE304760
* https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE342586

The repository also provides an R script to perform a re-analysis of data from Nishijima et al. paper (https://pubmed.ncbi.nlm.nih.gov/34930780/). The related data that were used here are located [on this page](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE155331).

The GitHub repository contains following repositories:

* **bulkRNAseq:** Contains scripts to reproduce bulk RNA-seq analysis
* **scRNAseq1:** Contains scripts related to the first single-cell data analysis
* **scRNAseq2:** Contains scripts related to the second single-cell data analysis

In addition, besides this README and LICENCE.md files, the repository directly contains **Metadata_table.csv** files, which contains meta data specifying samples for both single cell experiments.

The directory **bulkRNAseq** contains:

* **batch1_merge_fastqs.sh:** Merges FASTQ downloaded from GEO NCBI in Fastq1 (batch1) directory into single file per sample and read. 
* **batch1_Lck_bulk.sh:** Runs STAR on merged FASTQ files from batch1.
* **batch1_Fastqc_bulk.sh:** Runs QC on batch1 FASTQ files.
* **batch2_Lck_bulk.sh:** Runs STAR on FASTQ files from batch2.
* **batch2_Fastqc_bulk.sh:** Runs QC on batch2 FASTQ files.
* **Sample_sheet.csv:** Specifies information about each sample.
* **Pathways** directory: Contains list of pathways used for analysis.

The directory **scRNAseq1** contains:

* **Exp21_W1_preparation.Rmd:** Used for demultiplexing of samples in data and generation of initial data. It creates Datasets directory and saves file "exp21W1_init_all.rds" into it
* **LCK_Library.csv:** A file needed to run mapping by 10X Cell ranger. **The /path/to/GitHub/directory needs to be replaced by *absolute* path to where this repository was cloned (ending with LCK_Project).
* **Feature_Reference.csv:** A Feature reference file to be used with cellranger. You can also obtain it at GEO NCBI repository, Accession number GSE304760 

The directory **scRNAseq2** contains:

* **Exp43_sc_Hashtags.Rmd:** Used for demultiplexing of samples by hashtags.
* **Exp43_sc_prep.Rmd:** Initial processing of data.
* **Exp43_sc_import_spec_Lck_data.Rmd:** Used for addition of Lck-KO related information.
* **LCK_Library.csv:** A file needed to run mapping by 10X Cell ranger. **The /path/to/GitHub/directory needs to be replaced by *absolute* path to where this repository was cloned (ending with LCK_Project).
* **Feature_Reference.csv:** A Feature reference file to be used with cellranger. You can also obtain it at GEO NCBI repository, Accession number GSE342586

## Analysis preparation

Before running analysis, you need to make sure you have:
* Cell ranger 5.0.1 installed that can be run with cellranger command;
* All required packages for R (see scripts);
* GRCm38 reference/transcriptome, which was made according to the instructions for Cell ranger v5.0.1 from Ensembl primary assembly MM file, version 102);

Afterwards, you need to clone this project. You'll end up with Project_Adrenalitis directory with sub-directories and contents describet above

```
git clone https://github.com/Lab-of-Adaptive-Immunity/LCK_Project.git
cd Project_Adrenalitis
```

## Analysis of bulk RNAseq data

1. Go into bulk bulkRNAseq directory

```
cd bulkRNAseq
```

2. Create Fastq1 and Fastq2 directories.

```
mkdir Fastqs1
mkdir Fastqs2
```

2. Download Fastq files (link given above, follow instructions on NCBI site). **These files must be stored in Fastqs1 (for batch1) and Fastq2 (for batch2) directory! It is also necessary to rename files to match input naming scheme in files batch1_merge_fastqs.sh and batch2_Lck_bulk.sh!** batch1 and batch2 are defined as run1 and run2 on GEO NCBI repository.

3. On batch1, run `batch1_merge_fastqs.sh` script. This script will merge files so there is only one file for each read and sample.
Note: You need to run this while in bulkRNAseq

```
bash batch1_merge_fastqs.sh
```
4. Run STAR on Fastq files for each batch, then place generated BAM files (appearing in directories in generated STAR2 directory) in BAM directory that you need to create before.

```
batch1_Lck_bulk.sh
batch2_Lck_bulk.sh
mkdir BAM # Then move BAM files here
```
5. Analyze data using `Lck_bulk_rna_seq_combined_Analysis.Rmd` file, preferably using RStudio.

## Analysis of Adrenalitis single cell data - first batch

1. Create Fastq directory and go into it.

```
mkdir Fastqs
cd Fastqs
```

2. Download Fastq files (link given above, follow instructions on NCBI site). **These files must be stored in Fastqs directory!** Once done, return into root of the project. 

```
cd .. # Return to root of project
```

3. Perform mapping. Before starting with mapping itself, you need to have your GRCm38 v102 reference ready (see above) and you need to modify Adrenals_Library.csv by replacing **/path/to/GitHub/directory/** with **your current path** (ie. if you cloned directory to path /home/johndoe/, then the /path/to/GitHub/directory/ would be replaced by /home/johndoe/Project_Adrenalitis/). Once done, you run the nalaysis with command: 

```
cellranger count --id=Exp_21_W1 --transcriptome=/path/to/transcriptome/GRCm38_v102 --libraries=Library_E06_W3.csv --feature-ref=FeatureReference.csv --localcores=8
```

where /path/to/transcriptome/GRCm38_v102 is path to your reference/transcriptome (see above) and FeatureReference.csv is provided here (see above; it is also available in GEON NCBI but it lacks one sample that is not used at the end). --localcores specifies the number of cores and number should be lower or equal to the number of cores your PC has.

6. Run, preferably in RStudio:

* Exp21_W1_preparation.Rmd

## Analysis of Adrenalitis single cell data - second batch




