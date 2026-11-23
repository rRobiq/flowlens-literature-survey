# From Local Explanations to Global Understanding with Explainable AI for Trees

**Key:** `lundberg2020local`
**Authors:** Lundberg, Erion, Chen, DeGrave, Prutkin, Nair, Katz, Himmelfarb, Bansal, Lee
**Venue:** Nature Machine Intelligence 2(1), pp. 56–67
**DOI:** [10.1038/s42256-019-0138-9](https://doi.org/10.1038/s42256-019-0138-9)

## Content
The TreeSHAP paper. It presents an algorithm that computes exact Shapley values for tree ensembles —
Random Forest, gradient boosting, XGBoost — in polynomial rather than exponential time, extends the
method to interaction effects, and shows how aggregating local attributions produces global
feature-importance summaries. The underlying axiomatic framework, including local accuracy and
consistency, is developed in the authors' earlier NeurIPS paper.

## Relevance to the thesis
This is what makes the explanation layer feasible at the scale of the dataset: exact Shapley values
over hundreds of trees and thousands of flows are only computationally practical because of the
polynomial-time algorithm. The interaction values matter for the security domain, since patterns
such as "high SYN count together with very short duration" are interactions rather than sums of
independent contributions. Aggregation of local values provides the per-class feature profiles that
are compared against protocol-derived expectations.

## Use in the thesis
Methodology chapter (explainer configuration, background sample, complexity budget); results
chapter (per-class attribution summaries and interaction analysis); discussion chapter (stability
of attributions across folds and models).

## Limitations
The default interventional mode assumes feature independence, which flow features clearly violate;
correlated features therefore split credit somewhat arbitrarily, and this is reported as a
limitation rather than concealed. Exactness of an explanation is also not evidence of its usefulness
to an analyst, and the two are evaluated separately.
