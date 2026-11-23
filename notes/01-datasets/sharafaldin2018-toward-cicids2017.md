# Toward Generating a New Intrusion Detection Dataset (CIC-IDS2017)

**Key:** `sharafaldin2018toward`
**Authors:** Sharafaldin, Lashkari, Ghorbani
**Venue:** ICISSP 2018, pp. 108–116
**DOI:** [10.5220/0006639801080116](https://doi.org/10.5220/0006639801080116)

## Content
The paper introduces CIC-IDS2017, the dataset on which this thesis is built. The authors
captured five days of traffic in a controlled testbed, one attack family per day, using
established tools, and exported the capture as flow records with around eighty statistical
features. They validate the dataset by training several classifiers on it and reporting
detection rates.

## Relevance to the thesis
It is the ground-truth source for supervised training and evaluation, so every reported metric
is traceable to this dataset. It also documents the per-day attack schedule, which is what makes
a time-ordered evaluation split possible — a central methodological choice of the thesis. Finally,
it provides the citable definition of each attack family and of the tool used to generate it,
which supports the mapping from the fifteen raw labels to the four classes used here.

## Use in the thesis
State-of-the-art chapter (dataset introduction); methodology chapter (dataset description, label
mapping, split construction); results chapter (all CIC-IDS2017 experiments).

## Limitations
The reported baseline results use a random train/test split, which is the protocol this thesis
argues against; those numbers are cited as a comparison point, not as a target. The traffic is
2017 testbed traffic, so external validity is limited, and the paper does not discuss the
labelling defects identified by later work.
