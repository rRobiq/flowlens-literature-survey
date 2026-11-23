# Random Forests

**Key:** `breiman2001random`
**Author:** Breiman
**Venue:** Machine Learning 45(1), pp. 5–32
**DOI:** [10.1023/A:1010933404324](https://doi.org/10.1023/A:1010933404324)

## Content
The paper that formalises Random Forests: bagging of decision trees combined with random feature
subsampling at each split, which reduces variance and yields low generalisation error with little
hyperparameter tuning. It introduces the out-of-bag error estimate and the two variable-importance
measures, Gini importance and permutation importance.

## Relevance to the thesis
Random Forest is one of the two supervised models used, and this is the citation that justifies the
choice; out-of-bag error additionally provides a cheap internal validation signal that does not
consume the held-out day. More importantly, the built-in variable importance is precisely what the
explanation layer replaces, and the thesis argues why the two differ: Gini importance is computed on
training data and is biased toward high-cardinality features such as port numbers, whereas Shapley
values are additive and instance-level. The ensemble structure is also what makes exact attribution
computationally tractable.

## Use in the thesis
Methodology chapter (model selection and configuration); results chapter (comparison with gradient
boosting); discussion chapter (disagreement between built-in importance and attribution).

## Limitations
The paper says nothing about explanation, calibration or class imbalance, and nothing about
temporal distribution shift, which is the dominant failure mode observed in this work.
