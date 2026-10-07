# QC of original data
mkdir bulk_Fastqc

fastqc Fastqs/1_S1_L001_R1_001.fastq.gz -o bulk_Fastqc
fastqc Fastqs/2_S2_L001_R1_001.fastq.gz -o bulk_Fastqc
fastqc Fastqs/3_S3_L001_R1_001.fastq.gz -o bulk_Fastqc
fastqc Fastqs/4_S4_L001_R1_001.fastq.gz -o bulk_Fastqc
fastqc Fastqs/5_S5_L001_R1_001.fastq.gz -o bulk_Fastqc

fastqc Fastqs/6_S6_L001_R1_001.fastq.gz -o bulk_Fastqc
fastqc Fastqs/7_S7_L001_R1_001.fastq.gz -o bulk_Fastqc
fastqc Fastqs/8_S8_L001_R1_001.fastq.gz -o bulk_Fastqc
fastqc Fastqs/9_S9_L001_R1_001.fastq.gz -o bulk_Fastqc
fastqc Fastqs/10_S10_L001_R1_001.fastq.gz -o bulk_Fastqc

multiqc bulk_Fastqc/ -o bulk_Multiqc
