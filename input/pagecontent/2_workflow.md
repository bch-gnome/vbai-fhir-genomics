{% include fsh-link-references.md %}

### workflow for genomic data generation

Clear and standardized description of the workflow used to generate genomic data is essential for any study, including AI/ML applications. Workflows described in standardized way also help reproducability of the data.


In this guide, the canonical FHIR resource [GenomicStudy](http://hl7.org/fhir/R5/genomicstudy.html) was extended to hold references to the final processed data as well as analysis workflow: [VBAI GenomicStudy][VbaiGenomicStudy]. It is intended that the resource is created for each studied sample, not for the entire cohort. Also, the extended profile includes quality metrics for the sample. Currently, only the total read counts and coverage metrics are defined. The metrics used in this implementation guide are described in detail.


##### Example of workflow - the GATK4 Best Practice published by Broad Institue

The example [GATK4 Best Practice for Whole Genome Sequencing][GATKBestPractice] shows computation workflow written in workflow description language reprensented using canonical FHIR resource, [PlanDefinition](http://hl7.org/fhir/R5/plandefinition.html).
