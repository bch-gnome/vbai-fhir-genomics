Instance: Patient1
InstanceOf: Patient
Title: "[Patient 1] Patient 1"
Usage: #example
* name.given = "Person1"
* name.family = "Family1"

Instance: Patient2
InstanceOf: Patient
Title: "[Patient 2] Patient 2"
Usage: #example
* name.given = "Person2"
* name.family = "Family2"

Instance: VBAICohort
InstanceOf: Group
Title: "[Cohort-wide] VBAI Cohort"
Usage: #example
* type = #person
* membership = #enumerated
* member[0].entity = Reference(Patient1)
* member[1].entity = Reference(Patient2)

Instance: VBAICollectionProcedure
InstanceOf: Procedure
Title: "[Cohort-wide] Biospecimen collection procedure for VBAI"
Usage: #example
* status = #unknown
* subject = Reference(VBAICohort)

Instance: Specimen1
InstanceOf: VbaiBiospecimen
Title: "[Patient 1] Specimen for Patient 1"
Usage: #example
* subject = Reference(Patient1)
* collection[0].method = http://snomed.info/sct#129314006
* collection[0].procedure = Reference(VBAICollectionProcedure)
* processing[0].description = "This is specimen processing method for VBAI study."
* processing[0].method = http://snomed.info/sct#4064007

Instance: Specimen2
InstanceOf: VbaiBiospecimen
Title: "[Patient 2] Specimen for Patient 2"
Usage: #example
* subject = Reference(Patient2)
* collection[0].method = http://snomed.info/sct#129314006
* collection[0].procedure = Reference(VBAICollectionProcedure)
* processing[0].description = "This is specimen processing method for VBAI study."
* processing[0].method = http://snomed.info/sct#4064007

Instance: WGSCallingInterval
InstanceOf: DocumentReference
Title: "[Cohort-wide] Variant Calling Interval for WGS study"
Usage: #example
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/resources/broad/hg38/v0/wgs_calling_regions.hg38.interval_list"

Instance: Patient1FASTQ1
InstanceOf: DocumentReference
Title: "[Patient 1] FASTQ file for WGS of Patient 1 (first of pair)"
Usage: #example
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/gatk-examples/example1/NA20318/ERR250970_1.filt.fastq.gz"

Instance: Patient1FASTQ2
InstanceOf: DocumentReference
Title: "[Patient 1] FASTQ file for WGS of Patient 1 (second of pair)"
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/gatk-examples/example1/NA20318/ERR250970_2.filt.fastq.gz"

Instance: Patient1VCF
InstanceOf: DocumentReference
Title: "[Patient 1] Variant call file for Patient 1"
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/platinum-genomes/vcf/NA12892_S1.genome.vcf"

Instance: Patient2UnmappedBam
InstanceOf: DocumentReference
Title: "[Patient 2] Unmapped reads for WGS of Patient 2"
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/test-data/dna/wgs/hiseq2500/NA12878/NA12878.full.1.unaligned.bam"

Instance: Patient2VCF
InstanceOf: DocumentReference
Title: "[Patient 2] Variant call file for Patient 2"
* status = #current
* content.attachment.url = "https://storage.googleapis.com/genomics-public-data/platinum-genomes/vcf/NA12892_S1.genome.vcf"

Instance: VbaiGenomicStudyPatient1
InstanceOf: VbaiGenomicStudy
Title: "[Patient 1] WGS study for Patient 1"
Usage: #example
* status = #unknown
* subject = Reference(Patient1)
* analysis[0].specimen = Reference(Specimen1)
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
Title: "[Patient 2] WGS study for Patient 2"
Usage: #example
* status = #unknown
* subject = Reference(Patient2)
* analysis[0].specimen = Reference(Specimen2)
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
Title: "[Patient 1] WGS report for Patient 1"
Usage: #example
* status = #unknown
* code = #1-8
* extension[source-genomic-study].valueReference = Reference(VbaiGenomicStudyPatient1)
* result[variant] = Reference(VbaiPatient1Variant1)

Instance: VbaiPatient1Variant1
InstanceOf: VbaiVariant
Title: "[Patient 1] Variant for Patient 1"
Usage: #example
* status = #final
* component[genomic-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NC_000019.10:g.44908822C>T
* component[genomic-vrs].valueCodeableConcept = https://vrs.ga4gh.org#ga4gh:VA.EgHPXXhULTwoP4-ACfs-YCXaeUQJBjH_
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SNV
* component[genomic-source-class].valueCodeableConcept = http://loinc.org#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = http://loinc.org#LA6706-1 "Heterozygous"
* component[reference-sequence-assembly].valueCodeableConcept = http://loinc.org#LA26806-2 "GRCh38"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/genegroup#HGNC:613 "APOE"
