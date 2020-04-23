---
title: "HowToUse"
author: "Joe DeVivo"
date: "4/23/2020"
output:
  html_document:
    df_print: kable
    fig_caption: true
    dev: svg
    highlight: haddock
    keep_md: yes
    smart: no
    theme: journal
    css: "../common/journalnps.min.css"
    toc: yes
    toc_float: true
    number_sections: true
---



Overview
========

This package has been developed to help automate the publication of

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
---------------------------

Figures
-------

Figures should be inserted using code chunks in all cases so that figure
settings can be set in the chunk header. The chunk header should at a minimum
set the fig.align parameter to “center” and the specify the figure caption
(fig.cap parameter). Inserting figures this way will ensure that the caption is
properly formatted and it will apply copy the caption to the figure’s “alt text”
tag, making it 508-compliant.

For example:

````markdown
```{r figure1, echo=FALSE, fig.align="center", fig.cap="**Figure 1.** Example general workflow to include in the methods section."}
include_graphics("ProcessingWorkflow.png")
```
````
Results in:

<div class="figure" style="text-align: center">
<img src="ProcessingWorkflow.png" alt="**Figure 1.** Example general workflow to include in the methods section." width="550" />
<p class="caption">**Figure 1.** Example general workflow to include in the methods section.</p>
</div>

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
