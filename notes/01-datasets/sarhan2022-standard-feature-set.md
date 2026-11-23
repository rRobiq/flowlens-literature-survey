# Towards a Standard Feature Set for Network Intrusion Detection System Datasets

**Key:** `sarhan2022standard`
**Authors:** Sarhan, Layeghy, Portmann
**Venue:** Mobile Networks and Applications 27(1), pp. 357–370
**DOI:** [10.1007/s11036-021-01843-0](https://doi.org/10.1007/s11036-021-01843-0)

## Content
The authors argue that the CICFlowMeter feature set is redundant, implementation-dependent and
difficult to reproduce, and they define a smaller NetFlow-style feature set of 43 features. They
re-export several public datasets with this reduced schema and show that classifiers trained on
it lose little or no accuracy relative to the full set.

## Relevance to the thesis
This source addresses the principal technical risk of the project: the model is trained on CSVs
produced by one tool and applied to features computed by an independent implementation, so any
semantic divergence produces out-of-distribution inputs. The reduced schema offers a documented
alternative when exact parity on the more exotic CICFlowMeter features proves impractical. It
also supports the argument that feature selection is a design decision with consequences, not a
preprocessing detail.

## Use in the thesis
Background chapter (feature families); methodology chapter (choice between full parity and the
reduced schema, with the comparison experiment); discussion chapter (redundant features and the
stability of feature attributions).

## Limitations
No reference implementation is provided, so the extractor must still be written and validated by
the author. The evaluation is accuracy-oriented and does not consider explanation quality.
