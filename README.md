# FlowLens — Literature Survey

Annotated bibliography for the thesis **FlowLens: flow-based network intrusion detection with
explainable AI and a comparative study of small local language models**.

Thirteen sources are collected, each with a note explaining what the source contains, what is
relevant for this work, where it is used, and what it does not provide. All bibliographic records
were verified against the publisher metadata.

## Contents

| Path | Contents |
|---|---|
| `notes/` | One annotation per source, grouped by theme |
| `bibliography/flowlens.bib` | Complete BibTeX records for all thirteen sources |
| `pdf/` | Open-access documents, plus `DOWNLOAD.md` and a download script |

## The sources and their role in the thesis

### Datasets

| Key | Source | Role |
|---|---|---|
| `sharafaldin2018toward` | Sharafaldin, Lashkari & Ghorbani (2018), ICISSP | Introduces CIC-IDS2017, the reference dataset. |
| `engelen2021troubleshooting` | Engelen, Rimmer & Joosen (2021), IEEE SPW | Documents the dataset's labelling defects and duplicates. |
| `sarhan2022standard` | Sarhan, Layeghy & Portmann (2022), MONET | Reproducible feature set; alternative to full tool parity. |

### Flow-based detection and attack mechanics

| Key | Source | Role |
|---|---|---|
| `drapergil2016characterization` | Draper-Gil et al. (2016), ICISSP | Defines the time-based flow features; justifies excluding payload inspection. |
| `eddy2007rfc4987` | RFC 4987 (2007) | SYN flood mechanics; grounds the expected feature pattern for denial of service. |
| `sommer2010outside` | Sommer & Paxson (2010), IEEE S&P | The open-world critique of supervised detection. |

### Machine learning

| Key | Source | Role |
|---|---|---|
| `breiman2001random` | Breiman (2001), Machine Learning | Random Forest, the primary supervised model. |
| `chen2016xgboost` | Chen & Guestrin (2016), KDD | Gradient boosting, the second supervised model; native missing-value handling. |
| `liu2008isolation` | Liu, Ting & Zhou (2008), ICDM | Isolation Forest, the unsupervised baseline. |

### Explainability

| Key | Source | Role |
|---|---|---|
| `lundberg2020local` | Lundberg et al. (2020), Nature Machine Intelligence | TreeSHAP: exact attributions for tree ensembles. |

### Evaluation methodology

| Key | Source | Role |
|---|---|---|
| `arp2022dos` | Arp et al. (2022), USENIX Security | Catalogue of pitfalls; the protocol is justified against it. |
| `pendlebury2019tesseract` | Pendlebury et al. (2019), USENIX Security | Temporal splits; the argument against random-split evaluation. |

### Large language models

| Key | Source | Role |
|---|---|---|
| `xu2024llmsecurity` | Xu et al. (2024), ACM TOSEM | Systematic review of LLMs in security; positions the second experimental arm. |

## Note structure

Each file in `notes/` follows the same sections: **Content** (what the paper does), **Relevance to
the thesis** (which part of the argument it supports), **Use in the thesis** (chapter-level
placement), and **Limitations** (what the source does not provide). The last section is deliberate:
the thesis argues from the boundaries of this literature, so those boundaries are recorded.

## Using the bibliography

```latex
\bibliography{bibliography/flowlens}
```

or with `biblatex`:

```latex
\usepackage[backend=biber]{biblatex}
\addbibresource{bibliography/flowlens.bib}
```

Every note names its BibTeX key on the first line, so notes and bibliography stay in correspondence.

## Obtaining the PDFs

Only openly licensed documents are included. Run `pdf/Get-Pdfs.ps1` once to download the ones with
a direct open-access link; the remainder are reachable through the university library and are listed
with their DOI in `pdf/DOWNLOAD.md`.
