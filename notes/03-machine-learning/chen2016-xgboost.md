# XGBoost: A Scalable Tree Boosting System

**Key:** `chen2016xgboost`
**Authors:** Chen, Guestrin
**Venue:** KDD '16, pp. 785–794
**DOI:** [10.1145/2939672.2939785](https://doi.org/10.1145/2939672.2939785)

## Content
Introduces XGBoost: regularised gradient boosting with a second-order objective, sparsity-aware
split finding, weighted quantile sketching and a cache-aware block structure. It is the reference
paper for the library of the same name.

## Relevance to the thesis
XGBoost is the second supervised model, and having two tree ensembles rather than one allows a
specific claim: if they agree on both accuracy and on the highest-ranked attributed features, the
explanation is a property of the data rather than of the model family; if they disagree, that
disagreement is itself a measurable result about explanation stability. The native handling of
missing values is directly relevant, because the published CSVs contain infinite and undefined
values arising from zero-duration flows, and this model ingests them without imputation while the
forest does not.

## Use in the thesis
Methodology chapter (model configuration, handling of invalid rows); results chapter (comparison
table); discussion chapter (agreement of attributions across model families).

## Limitations
Interpretability is not discussed in the paper, so the attribution method must be sourced
separately. Hyperparameter sensitivity is not analysed, which is why a sensitivity table is
reported in this work instead.
