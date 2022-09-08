---
# YAML header: do not edit
date: "08 September, 2022"
editor_options:
  chunk_output_type: inline
  markdown: 
    wrap: 72
csl: https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl
link-citations: True
output:
  bookdown::html_document2:
    df_print: kable
    fig_caption: True
    dev: svg
    highlight: haddock
    keep_md: True
    smart: False
    theme: journal
    css: !expr here::here('output', 'temp', 'common', 'journalnps.min.css')
    toc: True
    toc_float: True
    number_sections: False
    includes:
        before_body:
          - !expr here::here('output', 'temp', 'common', 'header.html')
        after_body: 
          - !expr here::here('output', 'temp', 'common', 'footer.html')
  bookdown::word_document2:
    df_print: kable
    fig_caption: True
    fig_height: 5
    fig_width: 5
    highlight: haddock
    number_sections: False
---





*https://doi.org/10.38750/7654321*

# DRR Title 

<!-- Authors section in columns -->

:::::: {.columns}
::: {.column width="47.5%"}
#### Jane Doe  <svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#A6CE39;overflow:visible;position:relative;"> <xmlns:xlink="http://www.w3.org/1999/xlink"><a xlink:href= "https://orcid.org/0000-1111-2222-3333"><path d="M294.8 188.2h-45.92V342h47.47c67.62 0 83.12-51.34 83.12-76.91 0-41.64-26.54-76.9-84.67-76.9zM256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm-80.79 360.8h-29.84v-207.5h29.84zm-14.92-231.1a19.57 19.57 0 1 1 19.57-19.57 19.64 19.64 0 0 1 -19.57 19.57zM300 369h-81V161.3h80.6c76.73 0 110.4 54.83 110.4 103.8C410 318.4 368.4 369 300 369z"/></a></svg>
NPS Inventory and Monitory Division<br>
1201 Oakridge Dr, Suite 150<br>
Fort Collins, Colorado 
:::
::: {.column width="5%"}
\ <!-- empty DIV (with white space) as a column separator-->
:::
::: {.column width="47.5%"}
#### John Doe  

Managed Business Solutions (MBS), a Sealaska Company<br>
Contractor to the National Park Service<br>
Natural Resource Stewardship and Science Directorate<br>
1201 Oakridge Dr, Suite 150<br>
Fort Collins, Colorado 
:::
::::::

#### 08 September, 2022 <!-- publication date - defaults to current system date -->

<!-- abstract heading - don't edit -->
<h4 class="text-center">
Abstract
</h4>

   Abstract Should go here. Multiple Lines are okay; it'll format correctly. Pay careful attendtion to non-standard characters, line breaks, carriage returns, and curly-quotes. You may find it useful to write the abstract in NotePad++ or some other text editor and not a word processor (such as Microsoft Word).



The abstract should succinctly describe the study, the assay(s) performed, the resulting data, and their reuse potential, but should not make any claims regarding new scientific findings. No references are allowed in this section. <!-- pulls from the abstract you supplied above - don't edit here! -->



<hr>

# Background & Introduction

The Background & Summary should provide an overview of the study design, the assay(s) performed, and the data generated, including any background information needed to put this study in the context of previous work and the literature, and should reference literature as needed. Literature should be cited both in the text and in the References section (below). In text citation should use the [Chicago Manual of Style](https://www.chicagomanualofstyle.org/tools_citationguide/citation-guide-2.html) author-date format.
<!-- to do: add in support for importing bibtex references: inline citations and citation formatting-->

The section should also briefly outline the broader goals that motivated collection of the data, as well as their potential reuse value. We also encourage authors to include a figure that provides a schematic overview of the study and assay(s) design.

# Data Records (required)

The Data Records section should be used to explain each data record associated with this work (for instance, a data package), including the DOI indicating where this information is stored, and provide an overview of the data files and their formats. Each external data record should be cited.

Tables should be used to support the data records and should clearly indicate the samples and subjects (study inputs), their provenance, and the experimental manipulations performed on each or the protocols for observational data collection (see example Tables below). They should also specify the data output resulting from each data-collection or analytical step, should these form part of the archived record.

### Summary of datasets created (required)

This DRR describes the data package Data Package Title which contains a metadata file and 2 data files. These data were compiled by the National Park Service Biological Resources Division and are available at https://doi.org/10.57830/12342567 (see Table 1).


Table: (\#tab:FileTable)**Data Package Title: List of data files**

File Name      Size     Description                                                                        
-------------  -------  -----------------------------------------------------------------------------------
my_data.csv    0.8 MB   This is a short description of my_data.csv (a good guideline is 10 words or less). 
my_data2.csv   10 GB    This is a short description of my_data2.csv.                                       


See Appendix for additional notes and examples.

# Data Quality Evaluation (required)

The Data Quality Evaluation section should present any analyses that are needed to support the technical quality of the dataset. This section may be supported by figures and tables, as needed. *This is a required section*; authors must provide information to justify the reliability of their data. Wherever possible & appropriate, data quality evaluation should be presented in the context of data standards and quality control procedures as prescribed in the project's quality assurance planning documentation.

**Required elements for this section**

*Stock Text to include:*

The data within the data records listed above have been reviewed by staff in the NPS Inventory and Monitoring Division to ensure accuracy, completeness, and consistency with documented data quality standards, as well as for usability and reproducibility. The *Data Package Title* is suitable for its intended use as of the date of processing (2022-09-08).

*Required Table*


Table: (\#tab:dataFlaggingTable)**Description of data quality flags**

Flag   Definition            Useage                   
-----  --------------------  -------------------------
A      Accepted              columns endining "_flag" 
AE     Accepted, estimated   columns endining "_flag" 
R      Rejected              columns endining "_flag" 

Possible content **strongly Suggested to Include**

-   Occurrence rates or patterns in data that do not meet established standards or data quality objectives.

Possible content **may include:**

-   experiments that support or validate the data-collection procedure(s) (e.g. negative controls, or an analysis of standards to confirm measurement linearity)
-   statistical analyses of experimental error and variation
-   general discussions of any procedures used to ensure reliable and unbiased data production, such as chain of custody procedures, blinding and randomization, sample tracking systems, etc.
-   any other information needed for assessment of technical rigor by reviewers/users

Generally, this **should not include:**

-   follow-up experiments aimed at testing or supporting an interpretation of the data
-   statistical hypothesis testing (e.g. tests of statistical significance, identifying deferentially expressed genes, trend analysis, etc.)
-   exploratory computational analyses like clustering and annotation enrichment (e.g. GO analysis).

# Usage Notes (required)

The Usage Notes should contain brief instructions to assist other researchers with reuse of the data. This may include discussion of software packages (with appropriate citations) that are suitable for analysing the assay data files, suggested downstream processing steps (e.g. normalization, etc.), or tips for integrating or comparing the data records with other datasets. Authors are encouraged to provide code, programs or data-processing workflows if they may help others understand or use the data.

For studies involving privacy or safety controls on public access to the data, this section should describe in detail these controls, including how authors can apply to access the data, what criteria will be used to determine who may access the data, and any limitations on data use.

# Methods

Ideally these methods are identical to the methods listed in the metadata accompanying the data package that the DRR describes.Future versions of this template will pull directly from metadata.

The Methods should cite previous methods under use but also be detailed enough describing data production including a descriptions of the experimental design, data acquisition assays, and any computational processing (e.g. normalization, image feature extraction) that other can understand the methods and processing steps without referring to associated publications. Cite and link to the DataStore reference for the protocol for detailed methods sufficient for reproducing the experiment or observational study. Related methods should be grouped under corresponding subheadings where possible, and methods should be described in enough detail to allow other researchers to interpret the full study.

Specific data inputs and outputs should be explicitly cited in the text and included in the References section below. See the [USGS data citation guidelines](https://www.usgs.gov/data-management/data-citation) for examples of how to cite data in text and in the References section.

Authors are encouraged to consider creating a figure that outlines the experimental workflow(s) used to generate and analyse the data output(s) (Figure 1).

<div class="figure" style="text-align: center">
<img src="output/temp/example_DRR/figures/ProcessingWorkflow.png" alt="Example general workflow to include in the methods section." width="100%" />
<p class="caption">(\#fig:figure1)Example general workflow to include in the methods section.</p>
</div>

### Data Collection and Sample Processing Methods (optional)

Include a description of field methods and sample processing

### Additional Data Sources (optional)

Provide descriptions (with citations) of other data sources used.

### Data Processing (required if done)

Summarize process and results of any QC processes done that manipulate, change, or qualify data.

### Code Availability (required)

For all studies using custom code in the generation or processing of datasets, a statement must be included indicating whether and how the code can be accessed and any restrictions to access. This section should also include information on the versions of any software used, if relevant, and any specific variables or parameters used to generate, test, or process the current dataset. Actual analytical code should be provided in Appendices.


# References (required)

Provide sufficient information to locate the resource. If the citation has a DOI, include the DOI at the end of the citation, including the https://doi.org prefix. If you are citing documents that have unregistered DOIs (such as a data package that you are working on concurrently) still include the DOI. Electronic resources data and data services or web sites should include the date they were accessed.

Include bibliographic information for any works cited (including the data package the DRR is describing) in the above sections, using the standard *NPS NR Publication Series* referencing style (Derived from the Chicago Manual of Style). 

See the following examples:

#### Agency, Company, etc. as Author Examples 
Fung Associates Inc. and SWCA Environmental Consultants. 2010. Assessment of natural resources and watershed conditions for Kalaupapa National Historical Park. Natural Resource Report. NPS/NPRC/WRD/NRR—2010/261. National Park Service, Fort Collins, Colorado.

Greater Yellowstone Whitebark Pine Monitoring Working Group. 2014. Monitoring whitebark pine in the Greater Yellowstone Ecosystem: 2013 annual report. Natural Resource Data Series. NPS/GRYN/NRDS—2014/631. National Park Service. Fort Collins, Colorado.

National Park Service (NPS). 2016. State of the park report for Zion National Park. State of the Park Reports. No. 23. National Park Service. Washington, District of Columbia.

U.S. Forest Service (USFS). 1993. ECOMAP. National hierarchical framework of ecological units. U. S. Forest Service, Washington, D.C.

#### Traditional Journal Article Examples 
Bradbury, J. W., S. L. Vehrencamp, K. E. Clifton, and L. M. Clifton. 1996. The relationship between bite rate and local forage abundance in wild Thompson’s gazelles. Ecology 77:2237–2255. https://doi.org/10.2307/2265717

Oakley, K. L., L. P. Thomas, and S. G. Fancy. 2003. Guidelines for long-term monitoring 
protocols. Wildlife Society Bulletin 31(4):1000–1003.

Sawaya, M. A., T. K. Ruth, S. Creel, J. J. Rotella, J. B. Stetz, H. B. Quigley, and S. T. 
Kalinowski. 2011. Evaluation of noninvasive genetic sampling methods for cougars in Yellowstone National Park. The Journal of Wildlife Management 75(3):612–622. https://doi.org/10.1002/jwmg.92

#### Book Example 
Harvill, A. M., Jr., T. R. Bradley, C. E. Stevens, T. F. Wieboldt, D. M. E. Ware, D. W. Ogle, and G. W. Ramsey. 1992. Atlas of the Virginia flora, third edition. Virginia Botanical Associates, Farmville, Virginia.

#### Book Chapter Examples 
McCauly, E. 1984. The estimation of abundance and biomass of zooplankton in samples. Pages 228–265 in J. A. Dowling and F. H. Rigler, editors. A manual on methods for the assessment of secondary productivity in fresh waters. Blackwell Scientific, Oxford, UK.

Watson, P. J. 2004. Of caves and shell mounds in west-central Kentucky. Pages 159–164 in Of caves and shell mounds. The University of Alabama Press, Tuscaloosa, Alabama.

#### Published Report Examples 
Bass, S., R. E. Gallipeau, Jr., M. Van Stappen, J. Kumer, M. Wessner, S. Petersburg, L. L. Hays, J. Milstone, M. Soukup, M. Fletcher, L. G. Adams, and others. 1988. Highlights of natural resource management 1987. National Park Service, Denver, Colorado.

Holthausen, R. S., M. G. Raphael, K. S. McKelvey, E. D. Forsman, E. E. Starkey, and D. E. Seaman. 1994. The contribution of federal and nonfederal habitats to the persistence of the northern spotted owl on the Olympic Peninsula, Washington. General Technical Report PNW–GTR–352. U.S. Forest Service, Corvallis, Oregon.
https://doi.org/10.2737/PNW-GTR-352

Jackson, L. L., and L. P. Gough. 1991. Seasonal and spatial biogeochemical trends for chaparral vegetation and soil geochemistry in the Santa Monica Mountains National Recreation Area. U.S. Geological Survey, Denver. Open File Report 91–0005. 
https://doi.org/10.3133/ofr915

#### Unpublished Report Examples 
Conant, B., and J. I. Hodges. 1995. Western brant population estimates. U.S. Fish and Wildlife Service Unpublished Report, Juneau, Alaska.

Conant, B., and J. F. Voelzer. 2001. Winter waterfowl survey: Mexico west coast and Baja California. U.S. Fish and Wildlife Service Unpublished Report, Juneau, Alaska.

#### Thesis/Dissertation Examples 
Diong, C. H. 1982. Population and biology of the feral pig (Sus scrofa L) in Kipahulu Valley, Mau’i. Dissertation. University of Hawai’i, Honolulu, Hawai’i.

McTigue, K. M. 1992. Nutrient pulses and herbivory: Integrative control of primary producers in lakes. Thesis. University of Wisconsin, Madison, Wisconsin.

#### Conference Proceedings Examples 
Gunther, K. A. 1994. Changing problems in bear management: Yellowstone National Park twenty-plus years after the dumps. Ninth International Conference on Bear Research and Management. Missoula, MT, International Association for Bear Research and Management, Bozeman, Montana, February 1992:549–560.

Webb, J. R., and J. N. Galloway. 1991. Potential acidification of streams in Mid-Appalachian Highlands: A problem with generalized assessments. Southern Appalachian Man and Biosphere Conference. Gatlinburg, Tennessee. 

#### General Internet Examples 
Colorado Native Plant Society. 2016. Colorado Native Plant Society website. Available at: https://conps.org/ (accessed 07 March 2016).

National Park Service (NPS). 2016a. IRMA Portal (Integrated Resource Management Applications) website. Available at: https://irma.nps.gov (accessed 07 March 2016),

National Park Service (NPS). 2016b. Natural Resource Publications Management website. Available at: http://www.nature.nps.gov/publications/nrpm/ (accessed 07 March 2016).

United Sates Fish and Wildlife Service (USFWS). 2016. Endangered Species website. Available at: http://www.fws.gov/endangered/ (accessed 07 March 2016).

#### Online Data Warehouse Sites (sites that allow you see and download data from multiple sources)
National Oceanographic and Atmospheric Association (NOAA). 2016. NOAA National Climatic Data Center website. Available at: http://www.ncdc.noaa.gov/ (accessed 07 March 2016).

Environmental Protection Agency (EPA). 2016. Storage and Retrieval Data Warehouse website (STORET). Available at: http://www.epa.gov/storet/ (accessed 07 March 2016).

National Park Service (NPS). 2016c. NPScape Landscape Dynamics Metric Viewer website. Available at: http://science.nature.nps.gov/im/monitor/npscape/viewer/ (accessed 07 March 2016).

National Park Service (NPS). 2016d. NPSpecies online application. Available at: https://irma.nps.gov/NPSpecies/ (accessed 07 March 2016).

United States Geologic Survey (USGS). 2016. BioData - Aquatic Bioassessment Data for the Nation. Available at: https://aquatic.biodata.usgs.gov/ (accessed 07 March 2016). 

\pagebreak

# Acknowledgements (optional)

The Acknowledgements should contain text acknowledging non-author contributors. Acknowledgements should be brief, and should not include thanks to anonymous referees and editors or effusive comments. Grant or contribution numbers may be acknowledged.

# Appendix A. Code Listing
In most cases, Code listing is not required. If all QA/QC and data manipulations were performed elsewhere, you should cite that code in the methods (and leave the "Listing" code chunk as the default settings - eval=FALSE). If you have developed custom scripts, you can add those to DataStore with the reference type "Script" and cite them in the DRR.Some people have developed code to perform QA/QC or data manipulation within the DRR itself. In that case, you must set the "Listing" code chunk to eval=TRUE.



\pagebreak

# Appendix B. Session and Version Information
In most cases you do not need to report session info (leave the "session-info" code chunk parameters in their default state: eval=FALSE). Session and version information is only necessary if you have set the "Listing" code chunk to eval=TRUE in appendix A. In that case, change set "session-info" code chunk to eval=TRUE. 



# Additional Notes For Authors (this should not be included in reports...)

## Figures

Figure images should be included in-text near the initial point of reference.

Figure captions begin with a brief title sentence summarizing the purpose of the figure as a whole, and continue with a short description of what is shown in each panel and an explanation of any symbols used. Legends must total no more than 350 words, and may contain literature references. The first sentence of the legend will be used as the title for the figure. It (the first sentence) should contain no references of any kind, including to specific figure panels, bibliographic citations or references to other figures or panels.

## Tables

Authors are encouraged to provide one or more tables that provide basic information on the main 'inputs' to the study (e.g. samples, participants, or information sources) and the main data outputs of the study; also see the additional information on providing metadata on page 6. Tables in the manuscript should generally not be used to present primary data (i.e. measurements). Tables containing primary data should be submitted to an appropriate data repository.

Authors may provide tables within text near the initial citation or as an appendix. Legends, where needed, should be included in the Word document. Generally, a Data Release Report should have fewer than ten tables, but more may be allowed when needed.

### Example Data Record Summary Tables

Here, we provide four generic 'Table 1' examples, including two experimental study examples, one observational study example, and an example for an aggregated dataset of the type that may result from a meta-analysis.

```{=html}
<template id="e69a8c04-89bf-479c-9c3b-0ffec4dc4089"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  display: table;
  margin-top: 1.275em;
  margin-bottom: 1.275em;
  border-color: transparent;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-a8954f0c{}.cl-a880e79c{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a880e7a6{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a880febc{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a880fec6{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a8813576{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8813580{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8813581{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a881358a{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a881358b{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a881358c{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8813594{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8813595{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a881359e{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a881359f{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a88135a0{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a88135a8{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a88135a9{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a88135b2{width:82.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a88135b3{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a88135b4{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a88135b5{width:64.5pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a88135b6{width:58pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-a8954f0c'>
```
<caption class="Table Caption">

(\#tab:Table1)Experimental study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-a88135b6"><p class="cl-a880febc"><span class="cl-a880e79c">Subjects</span></p></td><td class="cl-a88135b3"><p class="cl-a880febc"><span class="cl-a880e79c">Protocol 1</span></p></td><td class="cl-a88135b2"><p class="cl-a880febc"><span class="cl-a880e79c">Protocol 2</span></p></td><td class="cl-a88135b4"><p class="cl-a880febc"><span class="cl-a880e79c">Protocol 3</span></p></td><td class="cl-a88135b5"><p class="cl-a880febc"><span class="cl-a880e79c">Protocol 4</span></p></td><td class="cl-a88135a9"><p class="cl-a880febc"><span class="cl-a880e79c">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-a881358c"><p class="cl-a880fec6"><span class="cl-a880e7a6">Mouse1</span></p></td><td class="cl-a8813580"><p class="cl-a880fec6"><span class="cl-a880e7a6">Drug treatment</span></p></td><td class="cl-a8813581"><p class="cl-a880fec6"><span class="cl-a880e7a6">Liver dissection</span></p></td><td class="cl-a881358b"><p class="cl-a880fec6"><span class="cl-a880e7a6">RNA extraction</span></p></td><td class="cl-a881358a"><p class="cl-a880fec6"><span class="cl-a880e7a6">RNA-Seq</span></p></td><td class="cl-a8813576"><p class="cl-a880fec6"><span class="cl-a880e7a6">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a881358c"><p class="cl-a880fec6"><span class="cl-a880e7a6">Mouse2</span></p></td><td class="cl-a8813580"><p class="cl-a880fec6"><span class="cl-a880e7a6">Drug treatment</span></p></td><td class="cl-a8813581"><p class="cl-a880fec6"><span class="cl-a880e7a6">Liver dissection</span></p></td><td class="cl-a881358b"><p class="cl-a880fec6"><span class="cl-a880e7a6">RNA extraction</span></p></td><td class="cl-a881358a"><p class="cl-a880fec6"><span class="cl-a880e7a6">RNA-Seq</span></p></td><td class="cl-a8813576"><p class="cl-a880fec6"><span class="cl-a880e7a6">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a88135a8"><p class="cl-a880fec6"><span class="cl-a880e7a6">Mousen</span></p></td><td class="cl-a8813595"><p class="cl-a880fec6"><span class="cl-a880e7a6">Drug treatment</span></p></td><td class="cl-a881359e"><p class="cl-a880fec6"><span class="cl-a880e7a6">Liver dissection</span></p></td><td class="cl-a88135a0"><p class="cl-a880fec6"><span class="cl-a880e7a6">RNA extraction</span></p></td><td class="cl-a881359f"><p class="cl-a880fec6"><span class="cl-a880e7a6">RNA-Seq</span></p></td><td class="cl-a8813594"><p class="cl-a880fec6"><span class="cl-a880e7a6">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="2df917e4-3d58-4e8b-9dc7-a2de240dfffd"></div>
<script>
var dest = document.getElementById("2df917e4-3d58-4e8b-9dc7-a2de240dfffd");
var template = document.getElementById("e69a8c04-89bf-479c-9c3b-0ffec4dc4089");
var caption = template.content.querySelector("caption");
if(caption) {
  caption.style.cssText = "display:block;text-align:center;";
  var newcapt = document.createElement("p");
  newcapt.appendChild(caption)
  dest.parentNode.insertBefore(newcapt, dest.previousSibling);
}
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

```{=html}
<template id="4c155e14-5512-4850-b111-05bf2e72f0bf"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  display: table;
  margin-top: 1.275em;
  margin-bottom: 1.275em;
  border-color: transparent;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-a8b8916a{}.cl-a8af25b2{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a8af25bc{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a8af3ab6{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a8af3ac0{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a8af768e{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af7698{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af7699{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76a2{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76a3{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76ac{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76ad{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76b6{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76b7{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76b8{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76b9{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76c0{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76c1{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76ca{width:85.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76cb{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76cc{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76cd{width:70.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8af76d4{width:116.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-a8b8916a'>
```
<caption class="Table Caption">

(\#tab:Table2)Experimental study with replicates Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-a8af76cd"><p class="cl-a8af3ab6"><span class="cl-a8af25b2">Subjects</span></p></td><td class="cl-a8af76c1"><p class="cl-a8af3ab6"><span class="cl-a8af25b2">Protocol 1</span></p></td><td class="cl-a8af76cb"><p class="cl-a8af3ab6"><span class="cl-a8af25b2">Protocol 2</span></p></td><td class="cl-a8af76ca"><p class="cl-a8af3ab6"><span class="cl-a8af25b2">Samples</span></p></td><td class="cl-a8af76d4"><p class="cl-a8af3ab6"><span class="cl-a8af25b2">Protocol 3</span></p></td><td class="cl-a8af76cc"><p class="cl-a8af3ab6"><span class="cl-a8af25b2">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-a8af76a2"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">CellCulture1</span></p></td><td class="cl-a8af7698"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Drug treatment</span></p></td><td class="cl-a8af76ac"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">RNA extraction</span></p></td><td class="cl-a8af768e"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">TechnicalRep1a</span></p></td><td class="cl-a8af7699"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Microarray hybridization</span></p></td><td class="cl-a8af76a3"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a8af76a2"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">CellCulture1</span></p></td><td class="cl-a8af7698"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Drug treatment</span></p></td><td class="cl-a8af76ac"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">RNA extraction</span></p></td><td class="cl-a8af768e"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">TechnicalRep2a</span></p></td><td class="cl-a8af7699"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Microarray hybridization</span></p></td><td class="cl-a8af76a3"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a8af76a2"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">CellCulture1</span></p></td><td class="cl-a8af7698"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Drug treatment</span></p></td><td class="cl-a8af76ac"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">RNA extraction</span></p></td><td class="cl-a8af768e"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">TechnicalRep3a</span></p></td><td class="cl-a8af7699"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Microarray hybridization</span></p></td><td class="cl-a8af76a3"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a8af76a2"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">CellCulture1</span></p></td><td class="cl-a8af7698"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Drug treatment</span></p></td><td class="cl-a8af76ac"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">RNA extraction</span></p></td><td class="cl-a8af768e"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">TechnicalRep1b</span></p></td><td class="cl-a8af7699"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Microarray hybridization</span></p></td><td class="cl-a8af76a3"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a8af76a2"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">CellCulture1</span></p></td><td class="cl-a8af7698"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Drug treatment</span></p></td><td class="cl-a8af76ac"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">RNA extraction</span></p></td><td class="cl-a8af768e"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">TechnicalRep2b</span></p></td><td class="cl-a8af7699"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Microarray hybridization</span></p></td><td class="cl-a8af76a3"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a8af76b9"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">CellCulture1</span></p></td><td class="cl-a8af76b7"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Drug treatment</span></p></td><td class="cl-a8af76c0"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">RNA extraction</span></p></td><td class="cl-a8af76ad"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">TechnicalRep3b</span></p></td><td class="cl-a8af76b8"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">Microarray hybridization</span></p></td><td class="cl-a8af76b6"><p class="cl-a8af3ac0"><span class="cl-a8af25bc">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="2e1f96ca-594a-4b57-af46-bfa50f63a779"></div>
<script>
var dest = document.getElementById("2e1f96ca-594a-4b57-af46-bfa50f63a779");
var template = document.getElementById("4c155e14-5512-4850-b111-05bf2e72f0bf");
var caption = template.content.querySelector("caption");
if(caption) {
  caption.style.cssText = "display:block;text-align:center;";
  var newcapt = document.createElement("p");
  newcapt.appendChild(caption)
  dest.parentNode.insertBefore(newcapt, dest.previousSibling);
}
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

```{=html}
<template id="13fad7b7-e8ca-4798-8b1e-6c79cb2613e9"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  display: table;
  margin-top: 1.275em;
  margin-bottom: 1.275em;
  border-color: transparent;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-a8d8d56a{}.cl-a8cf7f74{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a8cf7f88{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a8cf9766{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a8cf9770{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a8cfcba0{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcba1{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbaa{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbab{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbac{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbb4{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbb5{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbbe{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbbf{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbc0{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbc8{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbc9{width:118pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbca{width:125.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbd2{width:168.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8cfcbd3{width:83.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-a8d8d56a'>
```
<caption class="Table Caption">

(\#tab:Table3)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-a8cfcbd3"><p class="cl-a8cf9766"><span class="cl-a8cf7f74">Sample</span></p></td><td class="cl-a8cfcbc9"><p class="cl-a8cf9766"><span class="cl-a8cf7f74">Geographical Location</span></p></td><td class="cl-a8cfcbca"><p class="cl-a8cf9766"><span class="cl-a8cf7f74">Geoposition</span></p></td><td class="cl-a8cfcbd2"><p class="cl-a8cf9766"><span class="cl-a8cf7f74">Protocol</span></p></td><td class="cl-a8cfcbc8"><p class="cl-a8cf9766"><span class="cl-a8cf7f74">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-a8cfcbac"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">Body of water 1</span></p></td><td class="cl-a8cfcba1"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">location name</span></p></td><td class="cl-a8cfcbaa"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">latitude, longitude, altitude</span></p></td><td class="cl-a8cfcbab"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">Measurement of surface temperature</span></p></td><td class="cl-a8cfcba0"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a8cfcbac"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">Body of water 2</span></p></td><td class="cl-a8cfcba1"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">location name</span></p></td><td class="cl-a8cfcbaa"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">latitude, longitude, altitude</span></p></td><td class="cl-a8cfcbab"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">Measurement of surface temperature</span></p></td><td class="cl-a8cfcba0"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">dataFile2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a8cfcbc0"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">Body of water n</span></p></td><td class="cl-a8cfcbb5"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">location name</span></p></td><td class="cl-a8cfcbbe"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">latitude, longitude, altitude</span></p></td><td class="cl-a8cfcbbf"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">Measurement of surface temperature</span></p></td><td class="cl-a8cfcbb4"><p class="cl-a8cf9770"><span class="cl-a8cf7f88">dataFile3</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="8e84ccdf-019e-490b-ab9b-0085b4b01034"></div>
<script>
var dest = document.getElementById("8e84ccdf-019e-490b-ab9b-0085b4b01034");
var template = document.getElementById("13fad7b7-e8ca-4798-8b1e-6c79cb2613e9");
var caption = template.content.querySelector("caption");
if(caption) {
  caption.style.cssText = "display:block;text-align:center;";
  var newcapt = document.createElement("p");
  newcapt.appendChild(caption)
  dest.parentNode.insertBefore(newcapt, dest.previousSibling);
}
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

```{=html}
<template id="728f396c-c766-4321-8631-b17830c99a76"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  display: table;
  margin-top: 1.275em;
  margin-bottom: 1.275em;
  border-color: transparent;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-a8fd87f2{}.cl-a8f495de{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a8f495e8{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a8f4aa6a{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a8f4aa74{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a8f4e1b0{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1ba{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1c4{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1c5{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1ce{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1cf{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1d0{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1d8{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1d9{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1e2{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1e3{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1e4{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1ec{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1ed{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1ee{width:87.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1f6{width:59.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e1f7{width:155.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e200{width:211.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e201{width:132.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e202{width:146.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a8f4e203{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-a8fd87f2'>
```
<caption class="Table Caption">

(\#tab:Table4)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-a8f4e1ee"><p class="cl-a8f4aa6a"><span class="cl-a8f495de">Source</span></p></td><td class="cl-a8f4e1f6"><p class="cl-a8f4aa6a"><span class="cl-a8f495de">Sample</span></p></td><td class="cl-a8f4e1f7"><p class="cl-a8f4aa6a"><span class="cl-a8f495de">Sample Number</span></p></td><td class="cl-a8f4e200"><p class="cl-a8f4aa6a"><span class="cl-a8f495de">Temporal Range</span></p></td><td class="cl-a8f4e201"><p class="cl-a8f4aa6a"><span class="cl-a8f495de">Protocol 1</span></p></td><td class="cl-a8f4e202"><p class="cl-a8f4aa6a"><span class="cl-a8f495de">Protocol 2</span></p></td><td class="cl-a8f4e203"><p class="cl-a8f4aa6a"><span class="cl-a8f495de">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-a8f4e1c4"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Database URL 1</span></p></td><td class="cl-a8f4e1b0"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Dataset 1</span></p></td><td class="cl-a8f4e1ba"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Number of samples in the dataset</span></p></td><td class="cl-a8f4e1cf"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Range of measurements reported in the dataset</span></p></td><td class="cl-a8f4e1d0"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Data assimilation procedure</span></p></td><td class="cl-a8f4e1c5"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Method to generate output data</span></p></td><td class="cl-a8f4e1ce"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a8f4e1c4"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Database URL 1</span></p></td><td class="cl-a8f4e1b0"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Dataset 2</span></p></td><td class="cl-a8f4e1ba"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Number of samples in the dataset</span></p></td><td class="cl-a8f4e1cf"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Range of measurements reported in the dataset</span></p></td><td class="cl-a8f4e1d0"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Data assimilation procedure</span></p></td><td class="cl-a8f4e1c5"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Method to generate output data</span></p></td><td class="cl-a8f4e1ce"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a8f4e1e2"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Database URL 2</span></p></td><td class="cl-a8f4e1e3"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Dataset n</span></p></td><td class="cl-a8f4e1d8"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Number of samples in the dataset</span></p></td><td class="cl-a8f4e1d9"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Range of measurements reported in the dataset</span></p></td><td class="cl-a8f4e1ec"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Data assimilation procedure</span></p></td><td class="cl-a8f4e1ed"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">Method to generate output data</span></p></td><td class="cl-a8f4e1e4"><p class="cl-a8f4aa74"><span class="cl-a8f495e8">dataFile2</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="4abb44ec-3fd4-4f9d-9a9b-285d8206d114"></div>
<script>
var dest = document.getElementById("4abb44ec-3fd4-4f9d-9a9b-285d8206d114");
var template = document.getElementById("728f396c-c766-4321-8631-b17830c99a76");
var caption = template.content.querySelector("caption");
if(caption) {
  caption.style.cssText = "display:block;text-align:center;";
  var newcapt = document.createElement("p");
  newcapt.appendChild(caption)
  dest.parentNode.insertBefore(newcapt, dest.previousSibling);
}
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```
