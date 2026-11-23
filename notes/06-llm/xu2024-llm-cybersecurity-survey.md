# Large Language Models for Cyber Security: A Systematic Literature Review

**Key:** `xu2024llmsecurity`
**Authors:** Xu, Wang, Li, Wang, Zhao, Chen, Yu, Liu, Wang
**Venue:** ACM Transactions on Software Engineering and Methodology (accepted)
**Preprint:** [arXiv:2405.04760](https://arxiv.org/abs/2405.04760)

## Content
A systematic review of large language models applied to security. Over forty thousand candidate
papers were collected and one hundred and eighty-five were analysed in depth, categorised by
security task — including network intrusion detection — by model architecture, and by adaptation
strategy: fine-tuning, prompt engineering, external augmentation and agentic workflows.

## Relevance to the thesis
It establishes that the direction proposed for the second experimental arm is an active research
area rather than a speculative addition, and it prevents the work from being presented as
unprecedented. Its analysis of adaptation strategies is directly relevant to the constraint of
consumer hardware: if prompt-only approaches are well represented in the reviewed literature, then
a zero-training setup is methodologically defensible rather than a compromise. It also locates the
gap this thesis addresses, since the reviewed work is predominantly accuracy-oriented and reports
little on explanation quality or on evaluation rigour.

## Use in the thesis
State-of-the-art chapter (LLM-for-security landscape and positioning); methodology chapter
(justification of the prompt-only approach).

## Limitations
A review aggregates the claims of others and provides no primary measurements that could serve as a
baseline. It cannot establish whether small, quantised, locally runnable models are adequate, which
is precisely the question the feasibility measurement in this work answers.
