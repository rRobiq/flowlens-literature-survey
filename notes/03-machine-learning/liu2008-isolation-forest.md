# Isolation Forest

**Key:** `liu2008isolation`
**Authors:** Liu, Ting, Zhou
**Venue:** ICDM 2008, pp. 413–422
**DOI:** [10.1109/ICDM.2008.17](https://doi.org/10.1109/ICDM.2008.17)

## Content
Introduces Isolation Forest: an unsupervised anomaly detector that isolates observations through
random recursive partitioning. Anomalies are, by construction, easier to isolate and therefore
accumulate shorter average path lengths across an ensemble of random trees. Training uses only
benign or unlabelled data.

## Relevance to the thesis
It is the unsupervised baseline, and its role is partly conceptual: it demonstrates what detection
without labels provides and what it costs. The model can flag that a flow is unlike the benign
population, but cannot state which attack it is, which is precisely the limitation that motivates
the supervised arm of the work. It is also the natural classical comparison for the question of
detecting previously unseen behaviour, since that is the problem it exists to solve.

## Use in the thesis
Methodology chapter (baseline configuration); results chapter (comparison at matched false-positive
rate rather than at matched threshold); discussion chapter (attribution as the missing capability).

## Limitations
No class attribution, and no explanation mechanism compatible with additive attribution. Performance
is sensitive to the contamination parameter and to the benign sample used for training, so the
variance is reported rather than averaged away.
