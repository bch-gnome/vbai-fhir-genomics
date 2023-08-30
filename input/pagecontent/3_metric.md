# Quality metrics

#### Quality metrics for genomic data

The quality of generated sequencing data is important to harmonize genomic data for large cohort or across multiple institutions. There exist multiple metrics to evaluate the quality of genomic data. In this guide, the following metrics are considered:

* Total Reads: the total number of reads in the given data.

* Mean Coverage: the average number of reads per base covering the same base. Separate metrics for whole exome and genome sequencing.

* Breadth of Coverage: the fraction of genomic region that covered by certain number or more times. Seperate metrics for whole exome and genome sequencing.

The image below illustrates the concept of Breadth of Coverage with different thresholds.

In this guide, these metrics are implemented as a Value Set, [VBAI Genomics Metrics Value Set](ValueSet-vbai-genomics-metric-value-vs.html), with its own Code System, [VBAI Genomics Metrics Code System](CodeSystem-vbai-genomics-metrics-code-system.html).
The [Picard](https://broadinstitute.github.io/picard/index.html) tools is one of popular tools providing various quality metrics for high-troughput sequencing data and the above metrics are based on their defition of metrics. Adding more metrics implemented from Picard or any similar software to this 

![](Breadth_of_coverage.png)
