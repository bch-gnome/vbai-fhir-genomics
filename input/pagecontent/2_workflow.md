{% include fsh-link-references.md %}

Clear and standardized description of the workflow used to generate genomic data is essential for any study, including AI/ML applications. Workflows described in standardized way also help reproducability of the data.

In this guide, the canonical FHIR resource [GenomicStudy](http://hl7.org/fhir/R5/genomicstudy.html) was extended to hold references to the final processed data as well as analysis workflow: [VBAI GenomicStudy][VbaiGenomicStudy]. It is intended that the resource is created for each studied sample, not for the entire cohort.
Also, it requires to specify the biospecimen used to generate genomic data, which in turn requires to provide documents describing the procedure to collect the biospecimen.
In this way, it enforces to provide standardized descriptions on how the genomic data was generated.

### Related profiles and artifacts
- [VBAI Biospecimen][VbaiBiospecimen]: represents biological specimen obtained from [Patient](https://hl7.org/fhir/R5/patient.html) or [VbaiPatient](https://kind-lab.github.io/vbai-fhir/StructureDefinition-vbai-patient.html).
  - [Procedure](https://hl7.org/fhir/R5/procedure.html): represents the procedure to collect the specimen.
- [VBAI GenomicStudy][VbaiGenomicStudy]: represents the genomic data for a sample with related information.
  - [PlanDefinition](https://hl7.org/fhir/R5/plandefinition.html): describes the workflow used to process the genomic data.

The [VBAI GenomicStudy][VbaiGenomicStudy] also includes quality metrics for the generated genomic data, which will described in further detail in the next section.

#### Example of workflow - the GATK4 Best Practice published by Broad Institue

An example workflow for processing whole genome sequencing data of single sample based on the [GATK4 Best Practice](https://github.com/gatk-workflows/broad-prod-wgs-germline-snps-indels) published by Broad Institute shows a computational workflow originally written in worlflow description language represented using `PlanDefinition`.
