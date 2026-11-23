# TESSERACT: Eliminating Experimental Bias in Malware Classification across Space and Time

**Key:** `pendlebury2019tesseract`
**Authors:** Pendlebury, Pierazzi, Jordaney, Kinder, Cavallaro
**Venue:** 28th USENIX Security Symposium, pp. 729–746
**ISBN:** 978-1-939133-06-9
**URL:** [usenix.org](https://www.usenix.org/conference/usenixsecurity19/presentation/pendlebury)

## Content
The authors argue that malware classifiers are evaluated with spatial and temporal bias: samples
from the same campaign or time window leak across the train/test boundary, which inflates reported
performance. They formalise space and time constraints for experiment design, introduce a metric
summarising expected robustness in deployment, and show that realistic performance is substantially
lower than the published figures.

## Relevance to the thesis
Although the study concerns malware, its argument transfers directly to network flows: flows from
the same attack run, produced by the same tool against the same target within minutes, are
near-duplicates, and a stratified random split places them on both sides. This is the clearest
available justification for replacing stratified k-fold evaluation with a day-level holdout. It also
predicts the shape of the expected result, a substantial gap between random-split and time-aware
performance, which the thesis reports as a finding rather than as a failure.

## Use in the thesis
State-of-the-art chapter (evaluation methodology); methodology chapter (split construction, modelled
on their constraints); results chapter (random-split versus temporal-split comparison).

## Limitations
No guidance is given on how to define the grouping unit for network flows; using the capture day is
a decision argued in this work, not inherited from the paper. The analogy between malware families
and attack campaigns must also be argued explicitly rather than assumed.
