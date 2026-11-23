# RFC 4987: TCP SYN Flooding Attacks and Common Mitigations

**Key:** `eddy2007rfc4987`
**Author:** Eddy (IETF)
**Type:** Informational RFC
**DOI:** [10.17487/RFC4987](https://doi.org/10.17487/RFC4987)

## Content
The IETF's canonical description of the SYN flood. It explains how an attacker exhausts a server's
half-open connection backlog by sending SYNs and never completing the handshake, why the attack is
cheap for the attacker and expensive for the victim, and which mitigations exist, including SYN
cookies, backlog tuning and ingress filtering.

## Relevance to the thesis
It supplies the protocol mechanics needed to state, in advance, what a correct explanation of a
denial-of-service alert must contain: a high SYN count with almost no corresponding ACK, minimal
data transfer, very short duration, and many parallel flows toward the same destination port. This
converts explanation validation from a plausibility judgement into a set of testable predictions
against which the attribution output is compared. It also explains why the attack is detectable at
flow level at all, since its signature is a statistical ratio rather than a payload string.

## Use in the thesis
Background chapter (denial-of-service mechanics); discussion chapter (the expected-attribution
table against which explanation output is assessed).

## Limitations
No data, no dataset and no detector evaluation. It describes single-source flooding, so it does not
address the distributed variant, whose distinguishing information is not present in an individual
flow. Mitigations also change the observable packet pattern, which is noted as a limitation of the
class.
