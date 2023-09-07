Instance: Patient1
InstanceOf: Patient
Title: "Patient 1"
Usage: #example
* name.given = "Person1"
* name.family = "Family1"

Instance: Patient2
InstanceOf: Patient
Title: "Patient 2"
Usage: #example
* name.given = "Person2"
* name.family = "Family2"

Instance: WGSCallingInterval
InstanceOf: DocumentReference
Title: "Variant Calling Interval for WGS study"
Usage: #example
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/resources/broad/hg38/v0/wgs_calling_regions.hg38.interval_list"

Instance: Patient1FASTQ1
InstanceOf: DocumentReference
Title: "First pair of FASTQ files for WGS of Patient 1"
Usage: #example
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/gatk-examples/example1/NA20318/ERR250970_1.filt.fastq.gz"

Instance: Patient1FASTQ2
InstanceOf: DocumentReference
Title: "Second pair of FASTQ files for WGS of Patient 1"
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/gatk-examples/example1/NA20318/ERR250970_2.filt.fastq.gz"

Instance: Patient1VCF
InstanceOf: DocumentReference
Title: "Variant call file for Patient 1"
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/platinum-genomes/vcf/NA12892_S1.genome.vcf"

Instance: Patient2UnmappedBam
InstanceOf: DocumentReference
Title: "Unmapped reads for WGS of Patient 2"
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/test-data/dna/wgs/hiseq2500/NA12878/NA12878.full.1.unaligned.bam"

Instance: Patient2VCF
InstanceOf: DocumentReference
Title: "Variant call file for Patient 2"
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/platinum-genomes/vcf/NA12892_S1.genome.vcf"

Instance: VbaiGenomicStudyPatient1
InstanceOf: VbaiGenomicStudy
Title: "WGS study for Patient 1"
Usage: #example
* status = #unknown
* subject = Reference(Patient1)
* analysis[0].instantiatesCanonical = Canonical(GATKBestPractice)
* analysis[0].regionsStudied = Reference(WGSCallingInterval)
* analysis[0].regionsCalled = Reference(WGSCallingInterval)
* analysis[0].extension[qualityMetric][0].extension[metricCode].valueCoding = https://tom.tch.harvard.edu/vbai-fhir-genomics/CodeSystem/vbai-genomics-metrics-code-system#TOTAL_READS
* analysis[0].extension[qualityMetric][0].extension[metricValue].valueInteger = 123456788
* analysis[0].extension[qualityMetric][1].extension[metricCode].valueCoding = https://tom.tch.harvard.edu/vbai-fhir-genomics/CodeSystem/vbai-genomics-metrics-code-system#MEAN_COVERAGE
* analysis[0].extension[qualityMetric][1].extension[metricValue].valueDecimal = 23.45
* analysis[0].extension[qualityMetric][2].extension[metricCode].valueCoding = https://tom.tch.harvard.edu/vbai-fhir-genomics/CodeSystem/vbai-genomics-metrics-code-system#PCT_20X
* analysis[0].extension[qualityMetric][2].extension[metricValue].valueDecimal = 0.98
* analysis[0].input[0].file = Reference(Patient1FASTQ1)
* analysis[0].input[0].type.coding = http://hl7.org/fhir/genomicstudy-dataformat#fasta "FASTA"
* analysis[0].input[1].file = Reference(Patient1FASTQ2)
* analysis[0].input[1].type.coding = http://hl7.org/fhir/genomicstudy-dataformat#fasta "FASTA"
* analysis[0].output[0].file = Reference(Patient1VCF)
* analysis[0].output[0].type.coding = http://hl7.org/fhir/genomicstudy-dataformat#vcf "VCF"

Instance: VbaiGenomicStudyPatient2
InstanceOf: VbaiGenomicStudy
Title: "WGS study for Patient 2"
Usage: #example
* status = #unknown
* subject = Reference(Patient2)
* analysis[0].instantiatesCanonical = Canonical(GATKBestPractice)
* analysis[0].regionsStudied = Reference(WGSCallingInterval)
* analysis[0].regionsCalled = Reference(WGSCallingInterval)
* analysis[0].extension[qualityMetric][0].extension[metricCode].valueCoding = https://tom.tch.harvard.edu/vbai-fhir-genomics/CodeSystem/vbai-genomics-metrics-code-system#TOTAL_READS
* analysis[0].extension[qualityMetric][0].extension[metricValue].valueInteger = 123456788
* analysis[0].extension[qualityMetric][1].extension[metricCode].valueCoding = https://tom.tch.harvard.edu/vbai-fhir-genomics/CodeSystem/vbai-genomics-metrics-code-system#MEAN_COVERAGE
* analysis[0].extension[qualityMetric][1].extension[metricValue].valueDecimal = 23.45
* analysis[0].extension[qualityMetric][2].extension[metricCode].valueCoding = https://tom.tch.harvard.edu/vbai-fhir-genomics/CodeSystem/vbai-genomics-metrics-code-system#PCT_20X
* analysis[0].extension[qualityMetric][2].extension[metricValue].valueDecimal = 0.98
* analysis[0].input[0].file = Reference(Patient2UnmappedBam)
* analysis[0].input[0].type.coding = http://hl7.org/fhir/genomicstudy-dataformat#bam "BAM"
* analysis[0].output[0].file = Reference(Patient2VCF)
* analysis[0].output[0].type.coding = http://hl7.org/fhir/genomicstudy-dataformat#vcf "VCF"

Instance: VbaiGenomicReportPatient1
InstanceOf: VbaiGenomicsReport
Title: "WGS report for Patient 1"
Usage: #example
* status = #unknown
* code = #1-8
* extension[source-genomic-study][0].valueReference = Reference(VbaiGenomicStudyPatient1)
* result[variant][0] = Reference(VbaiPatient1Variant1)

Instance: VbaiPatient1Variant1
InstanceOf: VbaiVariant
Title: "Variant1 for Patient1"
Usage: #example
* status = #unknown
* component[genomic-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NC_000019.10:g.44908822C>T
//* component[genomic-vrs].valueCodeableConcept = http://varnomen.hgvs.org#ga4gh:VA.EgHPXXhULTwoP4-ACfs-YCXaeUQJBjH_
//* component[chromosome-identifier].valueCodeableConcept = 
//* component[ref-allele]
//* component[alt-allele]
//* component[coding-change-type]
//* component[genomic-source-class]
//* component[allelic-state]

