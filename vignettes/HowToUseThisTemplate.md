---
date: 4/23/2020
title: HowToUse
author: Joe DeVivo
---

Overview
========

This template has been developed to help automate the publication of **Data
Release Reports** (DRRs). Data Release Reports are created by the National Park
Service to provide detailed descriptions of valuable research datasets,
including the methods used to collect the data and technical analyses supporting
the quality of the measurements. Data Release Reports focus on helping others
reuse data, rather than presenting results, testing hypotheses, or presenting
new interpretations, methods or in-depth analyses.

Data Release Reports are intended to document the processing of fully-QAed data
to their final (QCed) form in a reproducible and transparent manner, but may
also serve to document provisional data to inform their use prior to
certification. Data Release Reports document the data collection methods,
quality standards, and processing code used to prepare and review data prior to
release, and present the quality of resultant data in the context of fitness for
their intended use.

Each DRR cites source and resultant datasets that are published concurrently and
cross-referenced. Associated datasets are made publicly available with the
exception of data that must be protected from release as per NPS and
park-specific policies.

DRRs also serve as the documentation of the technical review process (and
standards) for published datasets. Prior to publication, DRRs and accompanying
datasets should be reviewed to ensure accuracy, completeness, and consistency
with documented data quality standards, as well as for usability and
reproducibility.

Project Set-up
==============

Required Packages Not on CRAN
-----------------------------

Additional Useful Packages
--------------------------

Folder Structure
----------------

Creating a Reproducible Report
==============================

YAML Header Information
-----------------------

Rmarkdown Startup Code Chunk
----------------------------

Figures
-------

Figures should be inserted using code chunks in all cases so that figure
settings can be set in the chunk header. The chunk header should at a minimum
set the fig.align parameter to “center” and the specify the figure caption
(fig.cap parameter). Inserting figures this way will ensure that the caption is
properly formatted and it will apply copy the caption to the figure’s “alt text”
tag, making it 508-compliant.

For example:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```{r figure1, echo=FALSE, fig.align="center", fig.cap="**Figure 1.** Example general workflow to include in the methods section."}
include_graphics("ProcessingWorkflow.png")
```
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Results in:

**Figure 1.** Example general workflow to include in the methods section.

Tables
------

Tables should be created using the kable function, with additional formatting
options available via the kableExtra package. Specifying the caption in the
kable function call (as opposed to inline markdown text) will ensure that the
caption is appropriately formatted using the theme stylesheet. The table format
has been designed to mimic the NPS graphic identity standards.

In general, tables should be created with the bootstrap_options of striped,
hover, condensed, and responsive, with full_width set to false.

[Insert example code here]

Note that rendered tables are not fully 508 compliant, but they’re close. We are
currently working on extending (or contributing to) the kable package so that
rendered tables are 508 compliant.

Creating Data Packages
======================

Using this template with Reports Created in Microsoft Word.
===========================================================
