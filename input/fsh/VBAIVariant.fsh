Profile: VbaiVariant
Parent: Variant
Id: vbai-variant
Title: "VBAI Variant"
Description: "A Variant profile based on Genomic Reporting Implementation Guide profile."
* component ^slicing.rules = #openAtEnd
* component contains genomic-vrs 0..1
* component[genomic-vrs].value[x] only CodeableConcept
* component[genomic-vrs].value[x] from VRSVS (required)
//* component[genomic-vrs].code.coding.system = "https://vrs.ga4gh.org/"
//* component[genomic-vrs].value[x] only CodeableConcept
//* component[genomic-vrs].value[x] from https://vrs.ga4gh.org/ (required)
* obeys vbai-variant-id-constraint

Invariant: vbai-variant-id-constraint
Description: "VbaiVariant.component:genomic-vrs or VbaiVariant.component:genomic-hgvs or both SHALL be present"
Severity: #error
Expression: "component[genomic-vrs].exists() or component[genomic-hgvs].exists()"

ValueSet: VRSVS
Id: vrs-vs
Title: "GA4GH Variation Representation Specification Nomenclature"
Description: "VRS (Variation Representation Specification) is an open specification to standardize the exchange of variation data. (source: https://vrs.ga4gh.org/)"
* ^url = "https://vrs.ga4gh.org"
* ^status = #active
* include codes from system https://vrs.ga4gh.org
