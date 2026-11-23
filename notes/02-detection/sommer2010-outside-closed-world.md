# Outside the Closed World: On Using Machine Learning for Network Intrusion Detection

**Key:** `sommer2010outside`
**Authors:** Sommer, Paxson
**Venue:** IEEE Symposium on Security and Privacy 2010, pp. 305–316
**DOI:** [10.1109/SP.2010.25](https://doi.org/10.1109/SP.2010.25)

## Content
The most cited critique of supervised machine learning in network intrusion detection. The authors
argue that such work assumes a closed world — that the test distribution matches training and that
the class set is fixed — whereas real networks are open, heavy-tailed and adversarial. Detection
therefore optimises for the benchmark rather than for deployment, and the base-rate problem makes
even low false-positive rates operationally unusable.

## Relevance to the thesis
This is the strongest objection to the project and is treated as such, not avoided: the thesis
measures the claim empirically on CIC-IDS2017 rather than restating it. It supplies the vocabulary
used throughout the evaluation chapter (closed-world assumption, distribution shift, base rate),
and it motivates the investigation of whether a model with broader world knowledge can flag attack
classes absent from training.

## Use in the thesis
State-of-the-art chapter (central critical framing); discussion chapter (interpreting the collapse
in performance under day-level holdout); conclusions (open-world detection as future work).

## Limitations
A critique rather than a construction: it proposes no alternative that could be implemented here.
It predates modern explanation methods, so it does not consider whether attribution could mitigate
the trust problem it describes.
