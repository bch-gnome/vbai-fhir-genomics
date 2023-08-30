Profile: VbaiVariant
Parent: Variant
Id: vbai-variant
Title: "VBAI Variant"
Description: "A Variant profile based on Genomic Reporting Implementation Guide profile."
* component ^slicing.rules = #openAtEnd
* component contains genomic-vrs 0..1
* component[genomic-vrs].code.coding.system = "https://vrs.ga4gh.org/"
* component[genomic-vrs].value[x] from https://vrs.ga4gh.org/
* obeys vbai-variant-id-constraint


Invariant: vbai-variant-id-constraint
Description: "VbaiVariant.component:genomic-vrs or VbaiVariant.component:genomic-hgvs or both SHALL be present"
Severity: #error
Expression: "component[genomic-vrs].exists() or component[genomic-hgvs].exists()"
