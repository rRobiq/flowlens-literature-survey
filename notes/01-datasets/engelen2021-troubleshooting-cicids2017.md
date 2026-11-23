# Troubleshooting an Intrusion Detection Dataset: the CICIDS2017 Case Study

**Key:** `engelen2021troubleshooting`
**Authors:** Engelen, Rimmer, Joosen
**Venue:** IEEE Security and Privacy Workshops (SPW) 2021, pp. 7–12
**DOI:** [10.1109/SPW53761.2021.00009](https://doi.org/10.1109/SPW53761.2021.00009)

## Content
A systematic audit of CIC-IDS2017. The authors reconstruct the capture, re-run the flow export and
document concrete defects in the published CSVs: duplicated rows, flows mislabelled as benign,
inconsistencies between the attack schedule and the labels, and artefactual values arising from
zero-duration flows. They publish a corrected version of the dataset.

## Relevance to the thesis
This is the evidential basis for the data-quality section: every cleaning decision (duplicate
removal, label normalisation, handling of infinite values) is justified by a documented defect
rather than by convenience. It also supports the thesis argument that reported CIC-IDS2017
performance is not directly comparable across papers, since different papers may have used
different versions of the same labelled data.

## Use in the thesis
State-of-the-art chapter (benchmark limitations); methodology chapter (cleaning pipeline and
per-class row counts before and after cleaning); discussion chapter (how much of the benchmark's
reported accuracy is an artefact).

## Limitations
The paper repairs the dataset but does not address the evaluation problem: flows from the same
attack run still appear on both sides of a random split. That argument requires the evaluation
literature, and it is the gap this thesis addresses.
