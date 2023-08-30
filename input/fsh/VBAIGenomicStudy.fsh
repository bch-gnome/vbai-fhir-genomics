Profile: VbaiGenomicStudy
Parent: GenomicStudy
Id: vbai-genomic-study
Title: "VBAI GenomicsStudy"
Description: "A GenomicStudy profile based on FHIR R5 GenomicStudy resource."
* analysis.regionsStudied 1..1 MS
* analysis.regionsCalled 1..1 MS
//* analysis ^slicing.rules = #openAtEnd
//* analysis contains myslice 1..*
* analysis.extension contains VbaiGenomicQualityMetric named qualityMetric 1..*

Extension: VbaiGenomicQualityMetric
Id: vbai-genomic-quality-metric
Title: "VBAI Genomic Quality Metric"
Context: VbaiGenomicStudy.analysis
Description: "Quality Metric for genomic study."
* extension contains
  metricCode 1..* and
  metricValue 1..*
* extension[metricCode] ^short = "metric name"
* extension[metricCode].value[x] only Coding
* extension[metricCode].value[x] from VbaiGenomicsMetricVS (extensible)
* extension[metricValue] ^short = "metric value"
* extension[metricValue].value[x] only string or integer64 or boolean or integer
