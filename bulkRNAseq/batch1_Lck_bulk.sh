mkdir STAR2

# Create subdirs for each mapping
mkdir STAR2/Sample1Bulk1
mkdir STAR2/Sample2Bulk1
mkdir STAR2/Sample3Bulk1
mkdir STAR2/Sample4Bulk1
mkdir STAR2/Sample5Bulk1

mkdir STAR2/Sample6Bulk1
mkdir STAR2/Sample7Bulk1
mkdir STAR2/Sample8Bulk1
mkdir STAR2/Sample9Bulk1
mkdir STAR2/Sample10Bulk1

mkdir STAR2/Sample11
mkdir STAR2/Sample12
mkdir STAR2/Sample13
mkdir STAR2/Sample14
mkdir STAR2/Sample15

# Run STAR 2.7.11b on GRCm39 109 reference
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/1_R1_001.fastq.gz Fastqs_Takara_merged/1_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample1Bulk1/Sample1Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/2_R1_001.fastq.gz Fastqs_Takara_merged/2_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample2Bulk1/Sample2Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/3_R1_001.fastq.gz Fastqs_Takara_merged/3_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample3Bulk1/Sample3Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/4_R1_001.fastq.gz Fastqs_Takara_merged/4_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample4Bulk1/Sample4Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/5_R1_001.fastq.gz Fastqs_Takara_merged/5_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample5Bulk1/Sample5Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate

STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/6_R1_001.fastq.gz Fastqs_Takara_merged/6_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample6Bulk1/Sample6Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/7_R1_001.fastq.gz Fastqs_Takara_merged/7_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample7Bulk1/Sample7Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/8_R1_001.fastq.gz Fastqs_Takara_merged/8_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample8Bulk1/Sample8Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/9_R1_001.fastq.gz Fastqs_Takara_merged/9_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample9Bulk1/Sample9Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/10_R1_001.fastq.gz Fastqs_Takara_merged/10_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample10Bulk1/Sample10Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate

STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/11_R1_001.fastq.gz Fastqs_Takara_merged/11_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample11Bulk1/Sample11Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/12_R1_001.fastq.gz Fastqs_Takara_merged/12_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample12Bulk1/Sample12Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/13_R1_001.fastq.gz Fastqs_Takara_merged/13_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample13Bulk1/Sample13Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/14_R1_001.fastq.gz Fastqs_Takara_merged/14_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample14Bulk1/Sample14Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs_merged/15_R1_001.fastq.gz Fastqs_Takara_merged/15_R2_001.fastq.gz --outFileNamePrefix STAR2/Sample15Bulk1/Sample15Bulk1 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
