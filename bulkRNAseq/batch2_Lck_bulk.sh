mkdir STAR2

# Create subdirs for each mapping
mkdir STAR2/Sample1Bulk2
mkdir STAR2/Sample2Bulk2
mkdir STAR2/Sample3Bulk2
mkdir STAR2/Sample4Bulk2
mkdir STAR2/Sample5Bulk2

mkdir STAR2/Sample6Bulk2
mkdir STAR2/Sample7Bulk2
mkdir STAR2/Sample8Bulk2
mkdir STAR2/Sample9Bulk2
mkdir STAR2/Sample10Bulk2

# Run STAR 2.7.11b on GRCm39 109 reference
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/1_S1_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample1Bulk2/Sample1Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/2_S2_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample2Bulk2/Sample2Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/3_S3_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample3Bulk2/Sample3Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/4_S4_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample4Bulk2/Sample4Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/5_S5_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample5Bulk2/Sample5Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate

STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/6_S6_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample6Bulk2/Sample6Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/7_S7_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample7Bulk2/Sample7Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/8_S8_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample8Bulk2/Sample8Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/9_S9_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample9Bulk2/Sample9Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
STAR --runThreadN 20 --genomeDir STAR_references/GRCm39_v109/ --readFilesIn Fastqs2/10_S10_L001_R1_001.fastq.gz --outFileNamePrefix STAR2/Sample10Bulk2/Sample10Bulk2 --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate
