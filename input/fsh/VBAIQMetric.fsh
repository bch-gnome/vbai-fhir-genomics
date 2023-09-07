ValueSet: VbaiGenomicsMetricVS
Id: vbai-genomics-metric-value-vs
Title: "VBAI Genomics Metrics Value Set"
Description: "Value Set of quality metrics for whole genome sequencing."
* include codes from system VbaiGenomicsMetricCS

CodeSystem: VbaiGenomicsMetricCS
Id: vbai-genomics-metrics-code-system
Title: "VBAI Genomics Metrics Code System"
Description: "Code system of quality metrics for second-generation sequencing. Based on metrics defined in https://broadinstitute.github.io/picard/picard-metric-definitions.html"
* ^caseSensitive = true
* ^experimental = false
* #TOTAL_READS "Total Reads" "The total number of reads examined."
* #MEAN_TARGET_COVERAGE "Mean Coverage (targeted)" "The mean coverage in bases of the target region. After all filters are applied."
* #MEAN_COVERAGE "Mean Coverage" "The mean coverage in bases of the genome. After all filters are applied."
* #PCT_20X_TARGET "The Breadth of Coverage at 20x (targeted)" "The fraction of bases within the target region that attained at least 20x coverage after all filters applied."
* #PCT_20X "The Breadth of Coverage at 20x" "The fraction of bases that attained at least 20x after all filters are applied."

CodeSystem: VbaiGenomicStudyDataFormatCS
Id: vbai-genomic-study-data-format-code-system
Title: "VBAI Genomic Study Data Format Code System"
Description: "Addtional data formats accepted for VBAI Genomic Study."
* ^caseSensitive = true
* ^experimental = false
* #fastq "FASTQ"

ValueSet: VbaiGenomicStudyDataFormatVS
Id: vbai-genomics-study-data-format-vs
Title: "VBAI Genomic Study Data Format Value Set"
Description: "Value set of data formats for genomic study"
* include codes from system GenomicStudyDataFormat
* include codes from system VbaiGenomicStudyDataFormatCS
