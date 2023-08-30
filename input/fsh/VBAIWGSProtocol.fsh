Instance: GATKBestPractice
InstanceOf: PlanDefinition
Title: "GATK4 Best Practice for Whole Genome Preprocessing"
Usage: #example
* version = "0.1"
* title = "GATK4 Best Prctice for WGS - fq2bam"
* name = "gatk4-wgs-best-practice-fq2bam"
* status = #draft
* type = #workflow-definition
* purpose = "This is an example of WGS processing workflow resource referenced across multiple samples in the same cohort."
* action[0].title = "BWA MEM"
* action[0].description = "bwa mem -K 100000000 -p -v 3 -t 16 -Y"
* action[0].input[0].title = "FASTQ files or unaligned BAM"
* action[0].output[0].title = "Aligned BAM"
* action[0].participant[0].actorId = "BWA 0.7.17"
* action[0].participant[0].type = #device

* action[1].title = "MergeBamAlignment"
* action[1].description = "gatk MergeBamAlignment"
* action[1].input[0].title = "Aligned BAM"
* action[1].input[1].title = "Unaligned BAM"
* action[1].output[0].title = "Merged BAM containing both mapped and unmapped reads"
* action[1].participant[0].actorId = "GATK 4.2.6.1"
* action[1].participant[0].type = #device

* action[2].title = "MarkDuplicates"
* action[2].description = "gatk MarkDuplicates"
* action[2].input[0].title = "Merged Bam from MergeBamAlignment"
* action[2].output[0].title = "Bam with duplicated reads marked"
* action[1].participant[0].actorId = "GATK 4.2.6.1"
* action[1].participant[0].type = #device

* action[3].title = "SortBam"
* action[3].description = "gatk SortBam"
* action[3].input[0].title = "Bam with duplicated reads marked"
* action[3].output[0].title = "Sorted BAM"
* action[1].participant[0].actorId = "GATK 4.2.6.1"
* action[1].participant[0].type = #device

* action[4].title = "BaseRecalibrator"
* action[4].description = "gatk BaseRecalibrator -mode SNP; gatk BaseRecalibrator -mode INDEL"
* action[4].input[0].title = "Sorted Bam"
* action[4].output[0].title = "Recalibrator file for SNP"
* action[4].output[1].title = "Recalibrator file for INDEL"
* action[1].participant[0].actorId = "GATK 4.2.6.1"
* action[1].participant[0].type = #device

* action[5].title = "ApplyBQSR"
* action[5].description = "gatk ApplyBQSR -mode SNP; gatk ApplyBQSR -mode INDEL"
* action[5].input[0].title = "Sorted Bam"
* action[5].input[1].title = "Recalibrator file for SNP"
* action[5].input[2].title = "Recalibrator file for INDEL"
* action[5].output[0].title = "Recalibrated BAM"
* action[1].participant[0].actorId = "GATK 4.2.6.1"
* action[1].participant[0].type = #device