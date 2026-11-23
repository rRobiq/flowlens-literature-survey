# Characterization of Encrypted and VPN Traffic using Time-related Features

**Key:** `drapergil2016characterization`
**Authors:** Draper-Gil, Lashkari, Mamun, Ghorbani
**Venue:** ICISSP 2016, pp. 407–414
**DOI:** [10.5220/0005740704070414](https://doi.org/10.5220/0005740704070414)

## Content
The origin paper of the CICFlowMeter feature set. The authors define time-related flow features —
flow duration, inter-arrival times, active and idle periods, packet-length statistics, forward and
backward directionality — and show that these alone discriminate encrypted and VPN traffic from
regular traffic, without any access to payload.

## Relevance to the thesis
This is the definitional source for nearly every feature name that appears in the CIC-IDS2017 CSVs,
so it is the reference used to specify what the extractor must compute. It also provides the
strongest justification for excluding deep packet inspection from scope: if time-based statistics
are discriminative when payload is encrypted by construction, then payload access is not required
for the detection task addressed here. Finally, it explains which features are discriminative by
design, which matters when interpreting attribution results.

## Use in the thesis
Background chapter (feature families); methodology chapter (provenance of each extracted feature
and the parity target); discussion chapter (interpreting which features are ranked highest).

## Limitations
The paper evaluates a traffic-classification task, not intrusion detection, so the feature set was
not designed with attacks in mind. No reference implementation accompanies it, which is why exact
reproduction relies on the tool's source code rather than on the publication.
