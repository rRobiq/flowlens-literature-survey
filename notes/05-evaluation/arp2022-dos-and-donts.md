# Dos and Don'ts of Machine Learning in Computer Security

**Key:** `arp2022dos`
**Authors:** Arp, Quiring, Pendlebury, Warnecke, Pierazzi, Wressnegger, Cavallaro, Rieck
**Venue:** 31st USENIX Security Symposium, pp. 3971–3988
**ISBN:** 978-1-939133-31-1
**URL:** [usenix.org](https://www.usenix.org/conference/usenixsecurity22/presentation/arp)

## Content
A systematic catalogue of methodological pitfalls in security machine learning, derived from a
review of thirty papers from top-tier venues. It names and documents the recurring failure modes:
sampling bias, spurious correlations and shortcut features, data snooping, inappropriate baselines,
improper metrics and reproducibility failures, and it proposes actionable recommendations for each.

## Relevance to the thesis
The evaluation protocol is built against this checklist, pitfall by pitfall: a temporal rather than
random split addresses data snooping and sampling bias; ablation of address- and port-derived
features addresses shortcut features; comparison at matched false-positive rate addresses improper
baselines; per-class recall alongside macro-averaged scores addresses improper metrics. It also
supplies the frame for the thesis's main contribution, which is not the construction of a detector
but the measurement of how much of the benchmark's apparent performance is an artefact of exactly
these pitfalls.

## Use in the thesis
State-of-the-art chapter (evaluation rigour); methodology chapter (protocol justification);
discussion chapter (the leakage and shortcut audit follows their framework directly).

## Limitations
The paper prescribes good practice but offers no ready-made protocol for flow-based detection;
adapting it is part of this work. It does not consider explanation methods, so the equivalent
pitfalls for attribution remain an open problem.
