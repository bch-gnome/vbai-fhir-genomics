### Overview

The reltionship between profiles to represent the genomic data (including relevant information) for each patient can be summarised as follows.
It is assumed that bulk genomic data files (e.g., FASTQs, BAMs, VCFs) are stored in separate system with unique url for each file and are accessible from EHR.

{% include img.html img="assets/images/single-patient.png" %}

Here, all patients consisting the same cohort (i.e., sharing the specimen collection or WGS workflow) can reference the same resources.

{% include img.html img="assets/images/cohort.png" %}
