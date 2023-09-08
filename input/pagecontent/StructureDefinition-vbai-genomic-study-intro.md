{% include fsh-link-references.md %}
### Scope and Notes

This profile is assumed to hold meta information and bulk data files related to a single sequencing sample (e.g., whole genome sequencing for a patient).
The profile requires to provide the protocol used to produce the genomic study for reproducibility of results: `instantiatesCanonical` or `instantiatesUri`.
It also requires to specify sequencing regions (`regionsStudied` and `regionsCalled`) so that cross-sample can be accurately performed in comparable regions among samples.
The `analysis` is intended to contain relevant information for a single sample and it is required to provide quality metric for the sample (e.g., total read depth or average sequencing depth).
Refer to [VbaiGenomicQualityMetric] for examples of quality metrics.
There can be multiple `analysis` element only if they share the same protocol.

In the context of VBAI Study, the `subject` element can be redefined to use the customized profile of `Patient` ([VBAI Patient](https://kind-lab.github.io/vbai-fhir/StructureDefinition-vbai-patient.html)).
