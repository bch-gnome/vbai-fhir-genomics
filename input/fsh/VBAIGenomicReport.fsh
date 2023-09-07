Profile: VbaiGenomicsReport
Parent: GenomicsReport
Id: vbai-genomics-report
Title: "VBAI GenomicsReport"
Description: "A GenomicsReport profile for reporting genomics study result."
* extension contains SourceGenomicStudy named source-genomic-study 1..*


Extension: SourceGenomicStudy
Id: source-genomic-study
Title: "Source Genomic Study"
Context: VbaiGenomicsReport
Description: "Placeholder to reference related VbaiGenomicStudy."
* value[x] only Reference(VbaiGenomicStudy)
