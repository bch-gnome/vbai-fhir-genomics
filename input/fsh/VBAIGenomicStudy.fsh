Profile: VbaiGenomicStudy
Parent: GenomicStudy
Id: vbai-genomic-study
Title: "VBAI GenomicsStudy"
Description: "A GenomicStudy profile based on FHIR R5 GenomicStudy resource."
* analysis 1..1
* analysis.regionsStudied 1..1
* analysis.regionsCalled 1..1
* analysis.extension contains VbaiGenomicQualityMetric named qualityMetric 1..*
* analysis.genomeBuild from http://loinc.org/vs/LL1040-6 (extensible)
* analysis.input.type from VbaiGenomicStudyDataFormatVS
* analysis.output.type from VbaiGenomicStudyDataFormatVS

Extension: VbaiGenomicQualityMetric
Id: vbai-genomic-quality-metric
Title: "VBAI Genomic Quality Metric"
Context: VbaiGenomicStudy.analysis
Description: "Quality Metric for genomic study."
* extension contains
  metricCode 1..1 and
  metricValue 1..*
* extension[metricCode] ^short = "the name of quality metric"
* extension[metricCode].value[x] only Coding
* extension[metricCode].value[x] from VbaiGenomicsMetricVS (extensible)
* extension[metricValue] ^short = "the value for the quality metric"
* extension[metricValue].value[x] only string or integer64 or integer or boolean or decimal
