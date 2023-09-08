{% include fsh-link-references.md %}

The [Genomics Reporting implementation guide](http://hl7.org/fhir/uv/genomics-reporting/) provides [Variant](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant) resource which uses [Human Genome Variation Society (HGVS) sequence variant nomenclature](https://varnomen.hgvs.org/) for variant representation.
The representative power of HGVS provides multiple ways to convey different context to the variants.
However, the `Variant` do not constrain users to provide uniform variant representations across individuals. 
For example, if a variant was observed from a person is represented as protein change (HGVS 'p.' format) and as genomic base change (HGVS 'g.' format), they cannot be recognized as the same variant without additional transformation.
For applications such AI/ML which utilizes variants observed from multiple individuals and from different reporting system, it is more desirable if all variants are uniformly and unambiguously represented.


[GA4GH Variant Representation Specification (VRS)](https://vrs.ga4gh.org) provides a way to represent genetic variation unambiguously and to gerenate globally unique identifier without centralized control.
The computed identifier for a VRS object representing a variant is unique for every distinct variant.
Similarly, the HGVS 'g.' format can provide globally unique representation of variants.


Therefore, the [VBAI Variant][VbaiVariant] is extended to include at least one of the following to ensure compatibility across systems.
- `genomic-vrs`: computed identifier for the variant according to VRS specification
- `genomic-hgvs`: HGVS genomic representation (the 'g.' format)

### Related profiles and artifacts
- [VBAI Genomic Report][VbaiGenomicsReport]: to report genomic findings (including variants) from a patient's genomic study.
  - [VBAI Variant][VbaiVariant]: to represent individual variant.
- [VRSCS][VRSCS] and [VRSVS][VRSVS]: code system and value set to present computed identifiers for variants according to VRS.
