<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->


For a browser-friendly readme, check out the [DRR Template Website](https://nationalparkservice.github.io/DRR_Template/) hosted on github

# DRRs: Background

[Purpose and Scope of Data Release Reports](vignettes/PurposeAndScope.html)

This is a template is for use when drafting Data Release Reports. DRRs are created by the National Park Service and provide detailed descriptions of valuable research datasets, including the methods used to collect the data and technical analyses supporting the quality of the measurements. Data Release Reports focus on helping others reuse data rather than presenting results, testing hypotheses, or presenting new interpretations and in-depth analyses. 

# About this Template
This template contains an rmarkdown template file, default folder structure for project files, and all the necessary template files to generate an unformatted .docx file. The file will be ingested by EXstyles, converted to an .xml file and fully formatted according to NPS branding upon final publication. The goal of this process is to relieve data producers, managers, and scientists from the burden of formatting and allow them to focus primarily on content. The content should document the collection, processing, quality control, of NPS data packages and evaluate their of utility. 

This template is under active development to improve style and 508 compliance.

# How to Start a DRR

New projects can be established using this template by downloading a zip file of the template and associated files and folders from: [This Link](https://github.com/nationalparkservice/IMD_DRR_Template/zipball/master)

1. [How to Use this Template](vignettes/HowToUseThisTemplate.html) line-by-line instructions and descriptions for how to use the DRR Template.

2. [The DRR_Template](DRR_to_docx.Rmd) the file you make changes to to generate a DRR. Note: this is not a stand-alone file. To create a DRR please download the [zipped template](https://github.com/nationalparkservice/IMD_DRR_Template/zipball/master) with all associated files and folders.

3. [Bibtex reference file](reference.bib) is used if you want to automate your citations. Add each citation in bibtex format to this file and save it. Add in-text citations to the DRR Template and your References section will automatically be generated for you when you knit the .Rmd to .docx. You should still visually check the final format in the .docx file for accuracy, completion, and formatting. If you would prefer to manually format your citations, feel free to continue doing so.

4. [DRR_Report](DRR_to_docx.docx) an example of the .docx output file that takes into account your edits and changes to DRR_to_docx.Rmd (assuming you have saved and/or knit the .Rmd) 

# Examples
More will be provided as they are published. The following examples are post-formatting and should be used as examples for content generation only.

1. [DRR for tabular (csv) datasets](vignettes/DRAFT_2019_Report_NationalMeanDailyFlowsDataSummary.html) of hydrologic data used for calculating hydrologic metrics as a part of the national Environmental Settings monitoring protocol. 
    
2. [DRR for geospatial (file geodatabase) data](vignettes/NPS-NRSS-DRR-2020-1.html) continuing custom areas of analysis used for Environmental Settings monitoring protocol. Report created in Microsoft Word and ported to the template.

# Tips, FAQs, and Errata 
(coming soon)

