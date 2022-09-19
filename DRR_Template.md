---
# YAML header: do not edit
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





doi: *https://doi.org/10.38750/7654321*

# DRR Title 
### Data Release Report 12345
#### Jane Doe  https://orcid.org/0000-1111-2222-3333
NPS Inventory and Monitory Division  
1201 Oakridge Dr, Suite 150  
Fort Collins, Colorado 

#### John Doe  

Managed Business Solutions (MBS), a Sealaska Company  
Contractor to the National Park Service  
Natural Resource Stewardship and Science Directorate  
1201 Oakridge Dr, Suite 150  
Fort Collins, Colorado 
<!-- Authors section in columns

:::::: {.columns}
::: {.column width="47.5%"}
#### Jane Doe  <svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#A6CE39;overflow:visible;position:relative;"> <xmlns:xlink="http://www.w3.org/1999/xlink"><a xlink:href= "https://orcid.org/0000-1111-2222-3333"><path d="M294.8 188.2h-45.92V342h47.47c67.62 0 83.12-51.34 83.12-76.91 0-41.64-26.54-76.9-84.67-76.9zM256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm-80.79 360.8h-29.84v-207.5h29.84zm-14.92-231.1a19.57 19.57 0 1 1 19.57-19.57 19.64 19.64 0 0 1 -19.57 19.57zM300 369h-81V161.3h80.6c76.73 0 110.4 54.83 110.4 103.8C410 318.4 368.4 369 300 369z"/></a></svg>
NPS Inventory and Monitory Division  
1201 Oakridge Dr, Suite 150  
Fort Collins, Colorado 
:::
::: {.column width="5%"}
\ <!-- empty DIV (with white space) as a column separator-->
<!--
:::
::: {.column width="47.5%"}
#### John Doe  

Managed Business Solutions (MBS), a Sealaska Company  
Contractor to the National Park Service  
Natural Resource Stewardship and Science Directorate  
1201 Oakridge Dr, Suite 150  
Fort Collins, Colorado 
:::
::::::
-->

#### 19 September, 2022 <!-- publication date - defaults to current system date -->

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

The data within the data records listed above have been reviewed by staff in the NPS Inventory and Monitoring Division to ensure accuracy, completeness, and consistency with documented data quality standards, as well as for usability and reproducibility. The *Data Package Title* is suitable for its intended use as of the date of processing (2022-09-19).

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
In most cases, Code listing is not required. If all QA/QC and data manipulations were performed elsewhere, you should cite that code in the methods (and leave the "Listing" code chunk as the default settings: eval=FALSE and echo=FALSE). If you have developed custom scripts, you can add those to DataStore with the reference type "Script" and cite them in the DRR. Some people have developed code to perform QA/QC or data manipulation within the DRR itself. In that case, you must set the "Listing" code chunk to eval=TRUE and echo=TRUE to fully document the QA/QC process.



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
<template id="f1ef246a-2250-4274-b0ee-08c775073fb0"><style>
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
</style><div class="tabwid"><style>.cl-9330c3ae{}.cl-9314d554{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-9314d568{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-9314fb38{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-9314fb42{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-9315545c{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93155470{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93155471{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-9315547a{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-9315547b{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93155484{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93155485{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-9315548e{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-9315548f{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93155498{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93155499{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-931554a2{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-931554a3{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-931554ac{width:82.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-931554ad{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-931554b6{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-931554c0{width:64.5pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-931554c1{width:58pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-9330c3ae'>
```
<caption class="Table Caption">

(\#tab:Table1)Experimental study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-931554c1"><p class="cl-9314fb38"><span class="cl-9314d554">Subjects</span></p></td><td class="cl-931554ad"><p class="cl-9314fb38"><span class="cl-9314d554">Protocol 1</span></p></td><td class="cl-931554ac"><p class="cl-9314fb38"><span class="cl-9314d554">Protocol 2</span></p></td><td class="cl-931554b6"><p class="cl-9314fb38"><span class="cl-9314d554">Protocol 3</span></p></td><td class="cl-931554c0"><p class="cl-9314fb38"><span class="cl-9314d554">Protocol 4</span></p></td><td class="cl-931554a3"><p class="cl-9314fb38"><span class="cl-9314d554">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-93155484"><p class="cl-9314fb42"><span class="cl-9314d568">Mouse1</span></p></td><td class="cl-93155470"><p class="cl-9314fb42"><span class="cl-9314d568">Drug treatment</span></p></td><td class="cl-93155471"><p class="cl-9314fb42"><span class="cl-9314d568">Liver dissection</span></p></td><td class="cl-9315547b"><p class="cl-9314fb42"><span class="cl-9314d568">RNA extraction</span></p></td><td class="cl-9315547a"><p class="cl-9314fb42"><span class="cl-9314d568">RNA-Seq</span></p></td><td class="cl-9315545c"><p class="cl-9314fb42"><span class="cl-9314d568">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-93155484"><p class="cl-9314fb42"><span class="cl-9314d568">Mouse2</span></p></td><td class="cl-93155470"><p class="cl-9314fb42"><span class="cl-9314d568">Drug treatment</span></p></td><td class="cl-93155471"><p class="cl-9314fb42"><span class="cl-9314d568">Liver dissection</span></p></td><td class="cl-9315547b"><p class="cl-9314fb42"><span class="cl-9314d568">RNA extraction</span></p></td><td class="cl-9315547a"><p class="cl-9314fb42"><span class="cl-9314d568">RNA-Seq</span></p></td><td class="cl-9315545c"><p class="cl-9314fb42"><span class="cl-9314d568">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-931554a2"><p class="cl-9314fb42"><span class="cl-9314d568">Mousen</span></p></td><td class="cl-9315548e"><p class="cl-9314fb42"><span class="cl-9314d568">Drug treatment</span></p></td><td class="cl-9315548f"><p class="cl-9314fb42"><span class="cl-9314d568">Liver dissection</span></p></td><td class="cl-93155499"><p class="cl-9314fb42"><span class="cl-9314d568">RNA extraction</span></p></td><td class="cl-93155498"><p class="cl-9314fb42"><span class="cl-9314d568">RNA-Seq</span></p></td><td class="cl-93155485"><p class="cl-9314fb42"><span class="cl-9314d568">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="22c8cca3-477d-4bfc-8098-bb8d33a03e3d"></div>
<script>
var dest = document.getElementById("22c8cca3-477d-4bfc-8098-bb8d33a03e3d");
var template = document.getElementById("f1ef246a-2250-4274-b0ee-08c775073fb0");
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
<template id="512b34c1-d002-4ace-8f2c-a6246a0b0d04"><style>
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
</style><div class="tabwid"><style>.cl-9362b72e{}.cl-9357cf30{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-9357cf3a{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-9357e754{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-9357e75e{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-93582778{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93582782{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93582783{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-9358278c{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-9358278d{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-9358278e{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93582796{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93582797{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827a0{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827aa{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827b4{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827be{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827bf{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827c8{width:85.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827d2{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827d3{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827e6{width:70.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-935827e7{width:116.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-9362b72e'>
```
<caption class="Table Caption">

(\#tab:Table2)Experimental study with replicates Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-935827e6"><p class="cl-9357e754"><span class="cl-9357cf30">Subjects</span></p></td><td class="cl-935827bf"><p class="cl-9357e754"><span class="cl-9357cf30">Protocol 1</span></p></td><td class="cl-935827d2"><p class="cl-9357e754"><span class="cl-9357cf30">Protocol 2</span></p></td><td class="cl-935827c8"><p class="cl-9357e754"><span class="cl-9357cf30">Samples</span></p></td><td class="cl-935827e7"><p class="cl-9357e754"><span class="cl-9357cf30">Protocol 3</span></p></td><td class="cl-935827d3"><p class="cl-9357e754"><span class="cl-9357cf30">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-9358278c"><p class="cl-9357e75e"><span class="cl-9357cf3a">CellCulture1</span></p></td><td class="cl-93582782"><p class="cl-9357e75e"><span class="cl-9357cf3a">Drug treatment</span></p></td><td class="cl-9358278e"><p class="cl-9357e75e"><span class="cl-9357cf3a">RNA extraction</span></p></td><td class="cl-93582778"><p class="cl-9357e75e"><span class="cl-9357cf3a">TechnicalRep1a</span></p></td><td class="cl-93582783"><p class="cl-9357e75e"><span class="cl-9357cf3a">Microarray hybridization</span></p></td><td class="cl-9358278d"><p class="cl-9357e75e"><span class="cl-9357cf3a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-9358278c"><p class="cl-9357e75e"><span class="cl-9357cf3a">CellCulture1</span></p></td><td class="cl-93582782"><p class="cl-9357e75e"><span class="cl-9357cf3a">Drug treatment</span></p></td><td class="cl-9358278e"><p class="cl-9357e75e"><span class="cl-9357cf3a">RNA extraction</span></p></td><td class="cl-93582778"><p class="cl-9357e75e"><span class="cl-9357cf3a">TechnicalRep2a</span></p></td><td class="cl-93582783"><p class="cl-9357e75e"><span class="cl-9357cf3a">Microarray hybridization</span></p></td><td class="cl-9358278d"><p class="cl-9357e75e"><span class="cl-9357cf3a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-9358278c"><p class="cl-9357e75e"><span class="cl-9357cf3a">CellCulture1</span></p></td><td class="cl-93582782"><p class="cl-9357e75e"><span class="cl-9357cf3a">Drug treatment</span></p></td><td class="cl-9358278e"><p class="cl-9357e75e"><span class="cl-9357cf3a">RNA extraction</span></p></td><td class="cl-93582778"><p class="cl-9357e75e"><span class="cl-9357cf3a">TechnicalRep3a</span></p></td><td class="cl-93582783"><p class="cl-9357e75e"><span class="cl-9357cf3a">Microarray hybridization</span></p></td><td class="cl-9358278d"><p class="cl-9357e75e"><span class="cl-9357cf3a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-9358278c"><p class="cl-9357e75e"><span class="cl-9357cf3a">CellCulture1</span></p></td><td class="cl-93582782"><p class="cl-9357e75e"><span class="cl-9357cf3a">Drug treatment</span></p></td><td class="cl-9358278e"><p class="cl-9357e75e"><span class="cl-9357cf3a">RNA extraction</span></p></td><td class="cl-93582778"><p class="cl-9357e75e"><span class="cl-9357cf3a">TechnicalRep1b</span></p></td><td class="cl-93582783"><p class="cl-9357e75e"><span class="cl-9357cf3a">Microarray hybridization</span></p></td><td class="cl-9358278d"><p class="cl-9357e75e"><span class="cl-9357cf3a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-9358278c"><p class="cl-9357e75e"><span class="cl-9357cf3a">CellCulture1</span></p></td><td class="cl-93582782"><p class="cl-9357e75e"><span class="cl-9357cf3a">Drug treatment</span></p></td><td class="cl-9358278e"><p class="cl-9357e75e"><span class="cl-9357cf3a">RNA extraction</span></p></td><td class="cl-93582778"><p class="cl-9357e75e"><span class="cl-9357cf3a">TechnicalRep2b</span></p></td><td class="cl-93582783"><p class="cl-9357e75e"><span class="cl-9357cf3a">Microarray hybridization</span></p></td><td class="cl-9358278d"><p class="cl-9357e75e"><span class="cl-9357cf3a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-935827b4"><p class="cl-9357e75e"><span class="cl-9357cf3a">CellCulture1</span></p></td><td class="cl-935827a0"><p class="cl-9357e75e"><span class="cl-9357cf3a">Drug treatment</span></p></td><td class="cl-935827be"><p class="cl-9357e75e"><span class="cl-9357cf3a">RNA extraction</span></p></td><td class="cl-93582796"><p class="cl-9357e75e"><span class="cl-9357cf3a">TechnicalRep3b</span></p></td><td class="cl-935827aa"><p class="cl-9357e75e"><span class="cl-9357cf3a">Microarray hybridization</span></p></td><td class="cl-93582797"><p class="cl-9357e75e"><span class="cl-9357cf3a">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="749436d8-9d13-47b8-8361-da33bf2629a7"></div>
<script>
var dest = document.getElementById("749436d8-9d13-47b8-8361-da33bf2629a7");
var template = document.getElementById("512b34c1-d002-4ace-8f2c-a6246a0b0d04");
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
<template id="64dbd604-0c9b-4949-9a23-c89b16c00736"><style>
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
</style><div class="tabwid"><style>.cl-9395392e{}.cl-938a97f8{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-938a9816{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-938ab116{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-938ab120{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-938aefbe{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aefc8{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aefc9{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aefd2{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aefd3{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aefdc{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aefdd{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aefde{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aefe6{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aeff0{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aeff1{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aeff2{width:118pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aeff3{width:125.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938aeffa{width:168.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-938af004{width:83.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-9395392e'>
```
<caption class="Table Caption">

(\#tab:Table3)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-938af004"><p class="cl-938ab116"><span class="cl-938a97f8">Sample</span></p></td><td class="cl-938aeff2"><p class="cl-938ab116"><span class="cl-938a97f8">Geographical Location</span></p></td><td class="cl-938aeff3"><p class="cl-938ab116"><span class="cl-938a97f8">Geoposition</span></p></td><td class="cl-938aeffa"><p class="cl-938ab116"><span class="cl-938a97f8">Protocol</span></p></td><td class="cl-938aeff1"><p class="cl-938ab116"><span class="cl-938a97f8">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-938aefd3"><p class="cl-938ab120"><span class="cl-938a9816">Body of water 1</span></p></td><td class="cl-938aefc8"><p class="cl-938ab120"><span class="cl-938a9816">location name</span></p></td><td class="cl-938aefc9"><p class="cl-938ab120"><span class="cl-938a9816">latitude, longitude, altitude</span></p></td><td class="cl-938aefd2"><p class="cl-938ab120"><span class="cl-938a9816">Measurement of surface temperature</span></p></td><td class="cl-938aefbe"><p class="cl-938ab120"><span class="cl-938a9816">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-938aefd3"><p class="cl-938ab120"><span class="cl-938a9816">Body of water 2</span></p></td><td class="cl-938aefc8"><p class="cl-938ab120"><span class="cl-938a9816">location name</span></p></td><td class="cl-938aefc9"><p class="cl-938ab120"><span class="cl-938a9816">latitude, longitude, altitude</span></p></td><td class="cl-938aefd2"><p class="cl-938ab120"><span class="cl-938a9816">Measurement of surface temperature</span></p></td><td class="cl-938aefbe"><p class="cl-938ab120"><span class="cl-938a9816">dataFile2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-938aeff0"><p class="cl-938ab120"><span class="cl-938a9816">Body of water n</span></p></td><td class="cl-938aefdd"><p class="cl-938ab120"><span class="cl-938a9816">location name</span></p></td><td class="cl-938aefde"><p class="cl-938ab120"><span class="cl-938a9816">latitude, longitude, altitude</span></p></td><td class="cl-938aefe6"><p class="cl-938ab120"><span class="cl-938a9816">Measurement of surface temperature</span></p></td><td class="cl-938aefdc"><p class="cl-938ab120"><span class="cl-938a9816">dataFile3</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="58f19c88-2983-448f-9dab-fd11b6102ba1"></div>
<script>
var dest = document.getElementById("58f19c88-2983-448f-9dab-fd11b6102ba1");
var template = document.getElementById("64dbd604-0c9b-4949-9a23-c89b16c00736");
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
<template id="3c9cdc39-45a5-4200-a15e-51f532a27883"><style>
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
</style><div class="tabwid"><style>.cl-93ca215c{}.cl-93bdd0be{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-93bdd0c8{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-93bde7d4{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-93bde7e8{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-93be549e{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be54da{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be555c{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be555d{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5566{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5584{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5585{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be55b6{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5656{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5660{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5661{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5674{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be567e{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be567f{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5688{width:87.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5692{width:59.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be5693{width:155.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be569c{width:211.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be56a6{width:132.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be56ba{width:146.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-93be56c4{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-93ca215c'>
```
<caption class="Table Caption">

(\#tab:Table4)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-93be5688"><p class="cl-93bde7d4"><span class="cl-93bdd0be">Source</span></p></td><td class="cl-93be5692"><p class="cl-93bde7d4"><span class="cl-93bdd0be">Sample</span></p></td><td class="cl-93be5693"><p class="cl-93bde7d4"><span class="cl-93bdd0be">Sample Number</span></p></td><td class="cl-93be569c"><p class="cl-93bde7d4"><span class="cl-93bdd0be">Temporal Range</span></p></td><td class="cl-93be56a6"><p class="cl-93bde7d4"><span class="cl-93bdd0be">Protocol 1</span></p></td><td class="cl-93be56ba"><p class="cl-93bde7d4"><span class="cl-93bdd0be">Protocol 2</span></p></td><td class="cl-93be56c4"><p class="cl-93bde7d4"><span class="cl-93bdd0be">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-93be555c"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Database URL 1</span></p></td><td class="cl-93be549e"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Dataset 1</span></p></td><td class="cl-93be54da"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Number of samples in the dataset</span></p></td><td class="cl-93be5584"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Range of measurements reported in the dataset</span></p></td><td class="cl-93be5585"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Data assimilation procedure</span></p></td><td class="cl-93be555d"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Method to generate output data</span></p></td><td class="cl-93be5566"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-93be555c"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Database URL 1</span></p></td><td class="cl-93be549e"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Dataset 2</span></p></td><td class="cl-93be54da"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Number of samples in the dataset</span></p></td><td class="cl-93be5584"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Range of measurements reported in the dataset</span></p></td><td class="cl-93be5585"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Data assimilation procedure</span></p></td><td class="cl-93be555d"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Method to generate output data</span></p></td><td class="cl-93be5566"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-93be5660"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Database URL 2</span></p></td><td class="cl-93be5661"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Dataset n</span></p></td><td class="cl-93be55b6"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Number of samples in the dataset</span></p></td><td class="cl-93be5656"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Range of measurements reported in the dataset</span></p></td><td class="cl-93be567e"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Data assimilation procedure</span></p></td><td class="cl-93be567f"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">Method to generate output data</span></p></td><td class="cl-93be5674"><p class="cl-93bde7e8"><span class="cl-93bdd0c8">dataFile2</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="f56c0e47-0cf3-4707-94eb-5b2a1cfc84d5"></div>
<script>
var dest = document.getElementById("f56c0e47-0cf3-4707-94eb-5b2a1cfc84d5");
var template = document.getElementById("3c9cdc39-45a5-4200-a15e-51f532a27883");
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
