{% include fsh-link-references.md %}

#### Genetic variant representation

The [Genomics Reporting implementation guide](http://hl7.org/fhir/uv/genomics-reporting/) provides [Variant](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant) resource which uses [Human Genome Variation Society (HGVS) sequence variant nomenclature](https://varnomen.hgvs.org/) for variant representation. The representative power of HGVS provides multiple ways to convey different context to the variants. But it can be confusion to have multiple ways to describe the same genetic variant. [GA4GH Variant Representation Specification (VRS)](https://vrs.ga4gh.org) provides a way to represent genetic variation unambiguously and to gerenate globally unique identifier without centralized control.

Here the [VbaiVariant resource][VbaiVariant] is extended to include at least one of the following to ensure compatibility across systems.
- VRS computed identifier for the variant
- HGVS genomic representation (the 'g.' format)
