{% include fsh-link-references.md %}

The quality of generated sequencing data is important to harmonize genomic data for large cohort or across multiple institutions. There exist multiple metrics to evaluate the quality of genomic data. In this guide, the following metrics are considered:

* Total Reads: the total number of reads in the given data.

* Mean Coverage: the average number of reads per base covering the same base. Separate metrics for whole exome and genome sequencing.

* Breadth of Coverage: the fraction of genomic region that covered by certain number or more times. Seperate metrics for whole exome and genome sequencing.

The image below illustrates the concept of Breadth of Coverage with different thresholds.

{% include img.html img="Breadth_of_coverage.png" %}

The [Picard](https://broadinstitute.github.io/picard/index.html) tools is one of popular tools providing various quality metrics for high-troughput sequencing data and the above metrics are based on their defition of metrics. Expanding with more metrics implemented from Picard or any similar software is highly recommended.

### Related profiles and artifacts
- [VBAI GenomicStudy][VbaiGenomicStudy]: represents the genomic data for a sample with related information.
  - [VBAI Genomic Quality Metric][VbaiGenomicQualityMetric]: represents individual (quality metric, value) pair for genomic data.
- [VBAI Genomic Metrics Code System][VbaiGenomicStudyDataFormatCS] and [VBAI Genomic Metrics Value Set][VbaiGenomicStudyDataFormatVS]: code system and value set to represent various quality metrics for genomic data. Used in `VBAI Genomic Quality Metric`. 
