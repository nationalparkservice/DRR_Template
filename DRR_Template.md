---
params:
  reportNumber: "REPORT NUMBER"                           # Optional. Only include this if publishing in the semi-official Data Release Report Series. Contact Joe if you are.
  reportRefID: 123456                                     # This should match the Data Store Reference ID for this report.
  packageAbstract: >-
    Abstract Should go here.
    Multiple Lines are okay; it'll format correctly.
    Do not put the abstract in the text section below; this will allow
    For reuse of the abtract in all associated products.
    </br> </br> 
    The Abstract should succinctly describe the study, the assay(s) performed, 
    the resulting data, and their reuse potential, but should not make any 
    claims regarding new scientific findings. No references are allowed in this section. 
  dataPackage1RefID: 2272463                              # Data Store reference ID for data set associated with this report. You must have at least one.
  dataPackage1Title: "Dataset 1 FULL TITLE"               # Should match title in data store.
  dataPackage1Description: "SHORT TITLE FOR DATASET 1"  
  dataPackage2RefID: 2272464                              # Data Store reference ID for data set associated with this report. You must have at least one.
  dataPackage2Title: "Dataset 2 FULL TITLE"               # Should match title in data store.
  dataPackage2Description: "SHORT TITLE FOR DATASET 1"  
title: "REPORT TITLE"
subtitle: |
  | Data Release Report REPORT NUMBER 
author:
  - name: "Author 1"                                      # Add or remove authors as appropriate.
    affiliation: |
      | NPS Inventory & Monitoring Division 
      | 1201 Oakridge, Suite 150
      | Fort Collins, Colorado
  - name: "Author 2"
    affiliation: |
      | Managed Business Solutions (MBS), a Sealaska Company  
      | Contractor to National Park Service  
      | Natural Resource Stewardship and Science
date: "16 June, 2022"
abstract: "Abstract Should go here. Multiple Lines are okay; it'll format correctly. Do not put the abstract in the text section below; this will allow For reuse of the abtract in all associated products. </br> </br>  The Abstract should succinctly describe the study, the assay(s) performed,  the resulting data, and their reuse potential, but should not make any  claims regarding new scientific findings. No references are allowed in this section. "
editor_options:
  chunk_output_type: inline
csl: https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl
link-citations: yes
output:
  bookdown::html_document2:
    df_print: kable
    fig_caption: true
    dev: svg
    highlight: haddock
    keep_md: yes
    smart: no
    theme: journal
    css: !expr here::here('common', 'journalnps.min.css')
    toc: yes
    toc_float: true
    number_sections: false
    includes:
        before_body:
          - !expr here::here('common', 'header.html')
        after_body: 
          - !expr here::here('common', 'footer.html')
  bookdown::word_document2:
    df_print: kable
    fig_caption: yes
    fig_height: 5
    fig_width: 5
    highlight: haddock
    number_sections: false
---





<hr>
# Background & Introduction
The Background & Summary should provide an overview of the study design, the assay(s) performed, and the data generated, including any background information needed to put this study in the context of previous work and the literature, and should reference literature as needed. The section should also briefly outline the broader goals that motivated collection of the data, as well as their potential reuse value. We also encourage authors to include a figure that provides a schematic overview of the study and assay(s) design. 

# Methods
The Methods should include detailed text describing any steps or procedures used in producing the data, including full descriptions of the experimental design, data acquisition assays, and any computational processing (e.g. normalization, image feature extraction). See the detailed section in our submission guidelines for advice on writing a transparent and reproducible methods section. Related methods should be grouped under corresponding subheadings where possible, and methods should be described in enough detail to allow other researchers to interpret and repeat, if required, the full study. Specific data outputs should be explicitly referenced via data citation (see Data Records and Citing Data, below).

Authors should cite previous descriptions of the methods under use, but ideally the method descriptions should be complete enough for others to understand and reproduce the methods and processing steps without referring to associated publications. There is no limit to the length of the Methods section.

Authors are encouraged to consider creating a figure that outlines the experimental workflow(s) used to generate and analyse the data output(s) (Figure 1).


<div class="figure" style="text-align: center">
<img src="figures/ProcessingWorkflow.png" alt="**Figure 1.** Example general workflow to include in the methods section." width="100%" />
<p class="caption">(\#fig:figure1)**Figure 1.** Example general workflow to include in the methods section.</p>
</div>



## Data Collection and Sample Processing Methods (optional)
Include a description of field methods and sample processing 

## Additional Data Sources (optional)
Provide descriptions (with citations) of other data sources used.

## Data Processing (required if done)
Summarize process and results of any QC processes done that manipulate, change, or qualify data.

## Code Availability (required)
For all studies using custom code in the generation or processing of datasets, a statement must be included in the Methods section, under the subheading "Code availability", indicating whether and how the code can be accessed, including any restrictions to access. This section should also include information on the versions of any software used, if relevant, and any specific variables or parameters used to generate, test, or process the current dataset. Actual analytical code should be provided in Appendices.

# Data Records (required)
The Data Records section should be used to explain each data record associated
with this work, including the repository where this information is stored, and
to provide an overview of the data files and their formats. Each external data
record should be cited as described below. A data citation should also be placed
in the subsection of the Methods containing the data-collection or analytical
procedure(s) used to derive the corresponding record.

Tables should be used to support the data records, and should clearly indicate
the samples and subjects (study inputs), their provenance, and the experimental
manipulations performed on each (please see example Tables below). They should
also specify the data output resulting from each data-collection or analytical
step, should these form part of the archived record.

## Required Elements for this Section

### Summary of datasets created. Example of stock text to include. ###

Two datasets were generated as a part of this effort (Table 2):

* **Dataset 1 FULL TITLE.** Comma-separated text file enumerating the specific taxa considered to have federal conservation status in NPS park units. These data were compiled by the National Park Service Biological Resources Division and were last updated on XX. Available at https://irma.nps.gov/DataStore/Reference/Profile/2272463. 

* **Dataset 2 FULL TITLE.** Comma-seperated text file enumerating the park-specific specific taxa about which data must be protected from release to the public based on federal conservation status. This dataset includes all taxa identified by the USFWS as well as their child taxa and taxonomic synonyms. Available at https://irma.nps.gov/DataStore/Reference/Profile/2272464. 


*Also include a table explaining provenance of datasets*

See Appendix for additional notes and examples.

# Data Quality Evaluation (required)
The Data Quality Evaluation section should present any analyses that are needed
to support the technical quality of the dataset. This section may be supported
by figures and tables, as needed. *This is a required section*; authors must
provide information to justify the reliability of their data. Wherever possible
& appropriate, data quality evaluation should be presented in the context of
data standards and quality control procedures as prescribed in the project’s
quality assurance planning documentation.

**Required elements for this section**

*Stock Text to include:*

The data within the data records listed above have been reviewed by staff in the NPS Inventory and Monitoring Division to ensure accuracy, completeness, and consistency with documented data quality standards, as well as for usability and reproducibility. The *Dataset 2 FULL TITLE* is suitable for its intended use as of the date of processing (2022-06-16).

*Required Table*

Summary of any data qualification codes used, their definitions, and the fields to which they apply.


Possible content **strongly Suggested to Include**

-   Occurrence rates or patterns in data that do not meet established standards
    or data quality objectives.

Possible content **may include:**

-   experiments that support or validate the data-collection procedure(s) (e.g.
    negative controls, or an analysis of standards to confirm measurement
    linearity)

-   statistical analyses of experimental error and variation

-   general discussions of any procedures used to ensure reliable and unbiased
    data production, such as chain of custody procedures, blinding and
    randomization, sample tracking systems, etc.

-   any other information needed for assessment of technical rigor by
    reviewers/users

Generally, this **should not include:**

-   follow-up experiments aimed at testing or supporting an interpretation of
    the data

-   statistical hypothesis testing (e.g. tests of statistical significance,
    identifying differentially expressed genes, trend analysis, etc.)

-   exploratory computational analyses like clustering and annotation enrichment
    (e.g. GO analysis).

# Usage Notes (required)
The Usage Notes should contain brief instructions to assist other researchers
with reuse of the data. This may include discussion of software packages that
are suitable for analysing the assay data files, suggested downstream processing
steps (e.g. normalization, etc.), or tips for integrating or comparing the data
records with other datasets. Authors are encouraged to provide code, programs or
data-processing workflows if they may help others understand or use the data.

For studies involving privacy or safety controls on public access to the data,
this section should describe in detail these controls, including how authors can
apply to access the data, what criteria will be used to determine who may access
the data, and any limitations on data use.

# Acknowledgements (optional)
The Acknowledgements should contain text acknowledging non-author contributors.
Acknowledgements should be brief, and should not include thanks to anonymous
referees and editors or effusive comments. Grant or contribution numbers may be
acknowledged.

# References (required)
Bibliographic information for any works cited in the above sections, using the
standard *NPS NR Publication Series* referencing style.

In line with emerging [industry-wide standards for data
citation](https://www.nature.com/articles/sdata2018259), references to all
datasets described or used in the manuscript should be cited in the text and
listed in the ‘References’ section in the same manner as a conventional
literature reference.

ITIS. 2020. Integrated Taxonomic Information System. Available at: https://www.itis.gov/ (accessed 29 January 2020).

National Park Service (NPS). 2010. Draft Reference Manual RM 66B: Handling Protected Information. National Park Service, Washington, DC. (Available at https://irma.nps.gov/DataStore/Reference/Profile/2224216)

National Park Service (NPS). 2019. NPSpecies - the National Park Service biodiversity database. Available at: https://irma.nps.gov/NPSpecies/ (accessed xx).

Office of Management and Budget (OMB). 2013. Open Data Policy-Managing Information as an Asset. Office of Management and Budget. (Available at https://digital.gov/open-data-policy-m-13-13/)

U.S. Fish & Wildlife Service (USFWS). 2019. ECOS Environmental Conservation Online System. Available at: https://ecos.fws.gov/ecp/ (accessed xx).

U.S. Government Printing Office (GPO). 2013. Making Open and Machine Readable the New Default for Government Information. Executive Order 13642.(Available at https://www.govinfo.gov/content/pkg/CFR-2014-title3-vol1/pdf/CFR-2014-title3-vol1-eo13642.pdf)


\pagebreak

# Appendix C. Code Listing

```r
# This setup code loads both reproducible reporting packages
# (delete those not needed) and packages for the actual project.
# Note that it also generates the start of a BibTex literature cited
# including the citations for R and all used packages

# reproducible reporting packages
RRpackages <- c('markdown',     # links to Sundown rendering library
                'rmarkdown',    # newer rendering via pandoc
                'pander',       # alternative renderer for markdown,
                                # plus better tables than just knitr
                'knitr',
                "dataMaid",     # for makeCodebooks
                "R.rsp",        # dynamic generation of scientific reports
                "kimisc",       #
                "papeR",        # stat tables
                "texreg",       # formatting regression results for LaTeX
                                # or html
                "rmdHelpers",   # misc from Mark Peterson
                                #  thisFileName() thisFile_knit()
                'yaml',         # format data into markdown
                'rmdformats',   # templates including automatic ToC,
                                # also use_bookdown()
                'htmltools',    #
                "bibtex",
                "RefManageR",   # BibTeX reference manager
                "knitcitations" #
                )

inst <- RRpackages %in% installed.packages()
if (length(RRpackages[!inst]) > 0) {
   install.packages(RRpackages[!inst], dep = TRUE, repos = "https://cloud.r-project.org")
}
lapply(RRpackages, library, character.only = TRUE)

# __________________________________
# Now repeat for packages used in the analyses
pkgList <- c("devtools",        # tends to be needed/useful
             "RODBC",           # for connection to a database. 
             "EML",             # for data package creation and validation
             "flextable",
             "english",         # converts numbers into english. Good for all that English stuff.
             "remotes",         # for install_github()
             "dplyr",
             "ggplot2",
             "plotly")           # useful

inst <- pkgList %in% installed.packages()
if (length(pkgList[!inst]) > 0) {
   install.packages(pkgList[!inst], dep = TRUE, 
                    repos = "https://cloud.r-project.org")
}

lapply(pkgList, library, character.only = TRUE, quietly = TRUE)

if (! "EMLassemblyline" %in% installed.packages()) remotes::install_github("EDIorg/EMLassemblyline")
require("EMLassemblyline")  

# If your data has an R package associated with it, install it here. NCCN landbirds package used as an example below.
# if (!("nccnbirds" %in% installed.packages())) remotes::install_github("NCCN-Landbirds/nccn-landbirds-package")
# require("nccnbirds")  

# create stub of citations for packages
pkgBibTex <- lapply(c("base", pkgList, RRpackages), citation)

# pkgBibTex <- do.call()

knitr::opts_chunk$set(
   echo = TRUE,
   comment = " ",
   dev = "svg",
   fig.path = here::here("figures"),
   tidy.opts = list(width.cutoff = 60),
   tidy = TRUE,
   out.width = "100%"
   )
# if ggplot, update theme to default to centered titles
if ("ggplot2" %in% .packages()) {
   theme_update(plot.title = element_text(hjust = 0.5))
}

# Write YAML parameters to file for consistent reuse across report and data packages
save(params,file=here::here("data", "temp", "reportParameters.RData"))

## General Utility Functions

source(here::here("common", "SharedFunctions.R"))

#Create Abstract File from YAML header. You may need to update this if you change the data packaging folder (or add additional ones)
cat(params$packageAbstract,file="dataPackages\\DataPackageTemplate\\metadata_templates\\abstract.txt",sep="\n",append=FALSE)

# Set up table template
NPS_theme <- function(x, ...) {
    x <- colformat_double(x, big.mark = ",", decimal.mark = ".", digits = 1)
    x <- colformat_int(x, big.mark = ",")
    x <- colformat_date(x,fmt_date = "%Y-%m-%d")
    x <- set_table_properties(x, layout = "fixed")
    x <- border_remove(x)
    std_border <- fp_border_default(width = 1, color = "black")
    x <-hline_bottom(x,part="body")
    x <-hline_bottom(x,part="header")
    x <-hline_top(x,part="header")
    x <-bold(x,bold=TRUE,part="header")
    x <-set_table_properties(x, width = 0, layout = "autofit")
    x <-align_nottext_col(x, align = "right", header = TRUE, footer = TRUE)
    x <-align_text_col(x, align = "left", header = TRUE, footer = TRUE)
    x <-valign(x,valign="bottom",part="header")
    x <-valign(x,valign="top",part="body")
}

set_flextable_defaults(
  font.family = "Arial", 
  font.size = 9,
  font.color = "black",
  theme_fun = NPS_theme,
  )

# Load datasets for use (example commented out below)
# nccnbirds::LoadLandbirds(here::here("data", "final"), cache = FALSE)
include_graphics("figures/ProcessingWorkflow.png")

sessionInfo()
Sys.time()
T1Subjects<-c("Mouse1","Mouse2","Mousen")
T1Protocol1<-c("Drug treatment","Drug treatment","Drug treatment")
T1Protocol2<-c("Liver dissection","Liver dissection","Liver dissection")
T1Protocol3<-c("RNA extraction","RNA extraction","RNA extraction")
T1Protocol4<-c("RNA-Seq","RNA-Seq","RNA-Seq")
T1Data<-c("GEOXXXXX","GEOXXXXX","GEOXXXXX")
Table1<-data.frame(T1Subjects,T1Protocol1,T1Protocol2,T1Protocol3,T1Protocol4,T1Data)

T1<-flextable(Table1)
T1<-set_caption(T1,"Experimental study example Data Records table. [Table created using the flextable package.]")
T1<-set_header_labels(T1,
                      T1Subjects="Subjects",
                      T1Protocol1="Protocol 1",
                      T1Protocol2="Protocol 2",
                      T1Protocol3="Protocol 3",
                      T1Protocol4="Protocol 4",
                      T1Data="Data")
autofit(T1)
Source<-c("CellCulture1","CellCulture1","CellCulture1","CellCulture1","CellCulture1","CellCulture1")
Protocol1<-c("Drug treatment","Drug treatment","Drug treatment","Drug treatment","Drug treatment","Drug treatment")
Protocol2<-c("RNA extraction","RNA extraction","RNA extraction","RNA extraction","RNA extraction","RNA extraction")
Samples<-c("TechnicalRep1a","TechnicalRep2a","TechnicalRep3a","TechnicalRep1b","TechnicalRep2b","TechnicalRep3b")
Protocol3<-c("Microarray hybridization","Microarray hybridization","Microarray hybridization","Microarray hybridization","Microarray hybridization","Microarray hybridization")
Data<-c("GEOXXXXX","GEOXXXXX","GEOXXXXX","GEOXXXXX","GEOXXXXX","GEOXXXXX")
Table<-data.frame(Source,Protocol1,Protocol2,Samples,Protocol3,Data)

T1<-flextable(Table)
T1<-set_caption(T1,"Experimental study with replicates Data Records table. [Table created using the flextable package.]")
T1<-set_header_labels(T1,
                      Source="Subjects",
                      Protocol1="Protocol 1",
                      Protocol2="Protocol 2",
                      Samples="Samples",
                      Protocol3="Protocol 3",
                      data="Data")
autofit(T1)

Sample<-c("Body of water 1","Body of water 2","Body of water n")
geoloc<-c("location name","location name","location name")
geopos<-c("latitude, longitude, altitude","latitude, longitude, altitude","latitude, longitude, altitude")
protocol<-c("Measurement of surface temperature","Measurement of surface temperature","Measurement of surface temperature")
data<-c("dataFile1","dataFile2","dataFile3")
Table<-data.frame(Sample,geoloc,geopos,protocol,data)

T1<-flextable(Table)
T1<-set_caption(T1,"Observational study example Data Records table. [Table created using the flextable package.]")
T1<-set_header_labels(T1,
                      Sample="Sample",
                      geoloc="Geographical Location",
                      geopos="Geoposition",
                      protocol="Protocol",
                      data="Data")
autofit(T1)
c1<-c("Database URL 1","Database URL 1","Database URL 2")
c2<-c("Dataset 1","Dataset 2","Dataset n")
c3<-c("Number of samples in the dataset","Number of samples in the dataset","Number of samples in the dataset")
c4<-c("Range of measurements reported in the dataset","Range of measurements reported in the dataset","Range of measurements reported in the dataset")
c5<-c("Data assimilation procedure","Data assimilation procedure","Data assimilation procedure")
c6<-c("Method to generate output data","Method to generate output data","Method to generate output data")
c7<-c("dataFile1","dataFile1","dataFile2")
Table<-data.frame(c1,c2,c3,c4,c5,c6,c7)

T1<-flextable(Table)
T1<-set_caption(T1,"Observational study example Data Records table. [Table created using the flextable package.]")
T1<-set_header_labels(T1,
                      c1="Source",
                      c2="Sample",
                      c3="Sample Number",
                      c4="Temporal Range",
                      c5="Protocol 1",
                      c6="Protocol 2",
                      c7="Data")
autofit(T1)
```

\pagebreak

# Appendix D. Session and Version Information

```
  R version 4.1.3 (2022-03-10)
  Platform: x86_64-w64-mingw32/x64 (64-bit)
  Running under: Windows 10 x64 (build 19042)
  
  Matrix products: default
  
  locale:
  [1] LC_COLLATE=English_United States.1252 
  [2] LC_CTYPE=English_United States.1252   
  [3] LC_MONETARY=English_United States.1252
  [4] LC_NUMERIC=C                          
  [5] LC_TIME=English_United States.1252    
  
  attached base packages:
  [1] stats     graphics  grDevices utils     datasets  methods   base     
  
  other attached packages:
   [1] EMLassemblyline_3.3.5 plotly_4.10.0         ggplot2_3.3.5        
   [4] remotes_2.4.2         english_1.2-6         flextable_0.6.10     
   [7] EML_2.0.5             RODBC_1.3-19          devtools_2.4.3       
  [10] usethis_2.1.5         knitcitations_1.0.12  RefManageR_1.3.0     
  [13] bibtex_0.4.2.3        htmltools_0.5.2       rmdformats_1.0.3     
  [16] yaml_2.3.5            rmdHelpers_1.2        dplyr_1.0.8          
  [19] texreg_1.37.5         papeR_1.0-5           xtable_1.8-4         
  [22] car_3.0-12            carData_3.0-5         kimisc_0.4           
  [25] R.rsp_0.44.0          dataMaid_1.4.1        knitr_1.37           
  [28] pander_0.6.4          rmarkdown_2.12        markdown_1.1         
  
  loaded via a namespace (and not attached):
   [1] colorspace_2.0-3  ellipsis_0.3.2    rprojroot_2.0.2   base64enc_0.1-3  
   [5] fs_1.5.2          rstudioapi_0.13   fansi_1.0.2       lubridate_1.8.0  
   [9] xml2_1.3.3        R.methodsS3_1.8.1 cachem_1.0.6      robustbase_0.93-9
  [13] pkgload_1.2.4     jsonlite_1.8.0    R.oo_1.24.0       compiler_4.1.3   
  [17] httr_1.4.2        assertthat_0.2.1  fastmap_1.1.0     lazyeval_0.2.2   
  [21] cli_3.2.0         formatR_1.11      prettyunits_1.1.1 tools_4.1.3      
  [25] gtable_0.3.0      glue_1.6.2        gmodels_2.18.1    V8_4.1.0         
  [29] Rcpp_1.0.8        jquerylib_0.1.4   vctrs_0.3.8       gdata_2.18.0     
  [33] xfun_0.27         stringr_1.4.0     ps_1.6.0          brio_1.1.3       
  [37] testthat_3.1.2    lifecycle_1.0.1   gtools_3.9.2      jqr_1.2.2        
  [41] DEoptimR_1.0-10   MASS_7.3-55       scales_1.1.1      jsonld_2.2       
  [45] hms_1.1.1         curl_4.3.2        memoise_2.0.1     gridExtra_2.3    
  [49] gdtools_0.2.4     sass_0.4.0        stringi_1.7.6     highr_0.9        
  [53] desc_1.4.0        emld_0.5.1        zip_2.2.0         pkgbuild_1.3.1   
  [57] systemfonts_1.0.4 rlang_1.0.1       pkgconfig_2.0.3   evaluate_0.15    
  [61] purrr_0.3.4       htmlwidgets_1.5.4 processx_3.5.2    tidyselect_1.1.2 
  [65] here_1.0.1        plyr_1.8.6        magrittr_2.0.2    bookdown_0.24    
  [69] R6_2.5.1          generics_0.1.2    DBI_1.1.2         pillar_1.7.0     
  [73] haven_2.4.3       withr_2.4.3       abind_1.4-5       tibble_3.1.6     
  [77] crayon_1.5.0      uuid_1.0-3        utf8_1.2.2        officer_0.4.1    
  [81] grid_4.1.3        data.table_1.14.2 callr_3.7.0       forcats_0.5.1    
  [85] digest_0.6.29     R.cache_0.15.0    tidyr_1.2.0       R.utils_2.11.0   
  [89] munsell_0.5.0     viridisLite_0.4.0 bslib_0.3.1       sessioninfo_1.2.2
```

```
  [1] "2022-06-16 12:25:17 PDT"
```

# Additional Notes (this should not be included in reports...)

## Figures

Figure images should be included in-text near the initial point of reference.

Figure captions begin with a brief title sentence summarizing the purpose of the figure as a whole, and continue with a short description of what is shown in each panel and an explanation of any symbols used. Legends must total no more than 350 words, and may contain literature references. The first sentence of the legend will be used as the title for the figure. It (the first sentence) should contain no references of any kind, including to specific figure panels, bibliographic citations or references to other figures or panels.

## Tables

Authors are encouraged to provide one or more tables that provide basic
information on the main ‘inputs’ to the study (e.g. samples, participants, or
information sources) and the main data outputs of the study; also see the
additional information on providing metadata on page 6. Tables in the manuscript
should generally not be used to present primary data (i.e. measurements). Tables
containing primary data should be submitted to an appropriate data repository.

Authors may provide tables within text near the initial citation or as an
appendix. Legends, where needed, should be included in the Word document.
Generally, a Data Release Report should have fewer than ten tables, but more
may be allowed when needed.

### Example Data Record Summary Tables
Here, we provide four generic ‘Table 1’ examples, including two experimental
study examples, one observational study example, and an example for an
aggregated dataset of the type that may result from a meta-analysis. 

```{=html}
<template id="bef7e34a-850f-4ae1-ab71-457d1fc0e650"><style>
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
</style><div class="tabwid"><style>.cl-0e0afa0c{}.cl-0e038c4a{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-0e038c4b{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-0e038c4c{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0e038c4d{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0e03dbdc{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbdd{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbde{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbdf{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbe0{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbe1{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbe2{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbe3{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbe4{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbe5{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e03dbe6{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e040350{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e040351{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e040352{width:82.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e040353{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e040354{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e040355{width:64.5pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e040356{width:58pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-0e0afa0c'>
```
<caption class="Table Caption">

(\#tab:Table1)Experimental study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-0e040356"><p class="cl-0e038c4c"><span class="cl-0e038c4a">Subjects</span></p></td><td class="cl-0e040353"><p class="cl-0e038c4c"><span class="cl-0e038c4a">Protocol 1</span></p></td><td class="cl-0e040352"><p class="cl-0e038c4c"><span class="cl-0e038c4a">Protocol 2</span></p></td><td class="cl-0e040354"><p class="cl-0e038c4c"><span class="cl-0e038c4a">Protocol 3</span></p></td><td class="cl-0e040355"><p class="cl-0e038c4c"><span class="cl-0e038c4a">Protocol 4</span></p></td><td class="cl-0e040351"><p class="cl-0e038c4c"><span class="cl-0e038c4a">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-0e03dbe1"><p class="cl-0e038c4d"><span class="cl-0e038c4b">Mouse1</span></p></td><td class="cl-0e03dbdd"><p class="cl-0e038c4d"><span class="cl-0e038c4b">Drug treatment</span></p></td><td class="cl-0e03dbde"><p class="cl-0e038c4d"><span class="cl-0e038c4b">Liver dissection</span></p></td><td class="cl-0e03dbe0"><p class="cl-0e038c4d"><span class="cl-0e038c4b">RNA extraction</span></p></td><td class="cl-0e03dbdf"><p class="cl-0e038c4d"><span class="cl-0e038c4b">RNA-Seq</span></p></td><td class="cl-0e03dbdc"><p class="cl-0e038c4d"><span class="cl-0e038c4b">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e03dbe1"><p class="cl-0e038c4d"><span class="cl-0e038c4b">Mouse2</span></p></td><td class="cl-0e03dbdd"><p class="cl-0e038c4d"><span class="cl-0e038c4b">Drug treatment</span></p></td><td class="cl-0e03dbde"><p class="cl-0e038c4d"><span class="cl-0e038c4b">Liver dissection</span></p></td><td class="cl-0e03dbe0"><p class="cl-0e038c4d"><span class="cl-0e038c4b">RNA extraction</span></p></td><td class="cl-0e03dbdf"><p class="cl-0e038c4d"><span class="cl-0e038c4b">RNA-Seq</span></p></td><td class="cl-0e03dbdc"><p class="cl-0e038c4d"><span class="cl-0e038c4b">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e040350"><p class="cl-0e038c4d"><span class="cl-0e038c4b">Mousen</span></p></td><td class="cl-0e03dbe3"><p class="cl-0e038c4d"><span class="cl-0e038c4b">Drug treatment</span></p></td><td class="cl-0e03dbe4"><p class="cl-0e038c4d"><span class="cl-0e038c4b">Liver dissection</span></p></td><td class="cl-0e03dbe6"><p class="cl-0e038c4d"><span class="cl-0e038c4b">RNA extraction</span></p></td><td class="cl-0e03dbe5"><p class="cl-0e038c4d"><span class="cl-0e038c4b">RNA-Seq</span></p></td><td class="cl-0e03dbe2"><p class="cl-0e038c4d"><span class="cl-0e038c4b">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="d6387afb-7960-4a08-9fcd-df76269690a6"></div>
<script>
var dest = document.getElementById("d6387afb-7960-4a08-9fcd-df76269690a6");
var template = document.getElementById("bef7e34a-850f-4ae1-ab71-457d1fc0e650");
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
<template id="636992eb-40a9-4f9f-a9b6-64a24b83ded9"><style>
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
</style><div class="tabwid"><style>.cl-0e2857fa{}.cl-0e2232f8{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-0e2232f9{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-0e225a08{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0e225a09{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0e228122{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e228123{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e228124{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e228125{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e228126{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e228127{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e228128{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e228129{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22812a{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22812b{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22812c{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22a81e{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22a81f{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22a820{width:85.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22a821{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22a822{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22a823{width:70.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e22a824{width:116.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-0e2857fa'>
```
<caption class="Table Caption">

(\#tab:Table2)Experimental study with replicates Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-0e22a823"><p class="cl-0e225a08"><span class="cl-0e2232f8">Subjects</span></p></td><td class="cl-0e22a81f"><p class="cl-0e225a08"><span class="cl-0e2232f8">Protocol 1</span></p></td><td class="cl-0e22a821"><p class="cl-0e225a08"><span class="cl-0e2232f8">Protocol 2</span></p></td><td class="cl-0e22a820"><p class="cl-0e225a08"><span class="cl-0e2232f8">Samples</span></p></td><td class="cl-0e22a824"><p class="cl-0e225a08"><span class="cl-0e2232f8">Protocol 3</span></p></td><td class="cl-0e22a822"><p class="cl-0e225a08"><span class="cl-0e2232f8">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-0e228125"><p class="cl-0e225a09"><span class="cl-0e2232f9">CellCulture1</span></p></td><td class="cl-0e228123"><p class="cl-0e225a09"><span class="cl-0e2232f9">Drug treatment</span></p></td><td class="cl-0e228127"><p class="cl-0e225a09"><span class="cl-0e2232f9">RNA extraction</span></p></td><td class="cl-0e228122"><p class="cl-0e225a09"><span class="cl-0e2232f9">TechnicalRep1a</span></p></td><td class="cl-0e228124"><p class="cl-0e225a09"><span class="cl-0e2232f9">Microarray hybridization</span></p></td><td class="cl-0e228126"><p class="cl-0e225a09"><span class="cl-0e2232f9">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e228125"><p class="cl-0e225a09"><span class="cl-0e2232f9">CellCulture1</span></p></td><td class="cl-0e228123"><p class="cl-0e225a09"><span class="cl-0e2232f9">Drug treatment</span></p></td><td class="cl-0e228127"><p class="cl-0e225a09"><span class="cl-0e2232f9">RNA extraction</span></p></td><td class="cl-0e228122"><p class="cl-0e225a09"><span class="cl-0e2232f9">TechnicalRep2a</span></p></td><td class="cl-0e228124"><p class="cl-0e225a09"><span class="cl-0e2232f9">Microarray hybridization</span></p></td><td class="cl-0e228126"><p class="cl-0e225a09"><span class="cl-0e2232f9">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e228125"><p class="cl-0e225a09"><span class="cl-0e2232f9">CellCulture1</span></p></td><td class="cl-0e228123"><p class="cl-0e225a09"><span class="cl-0e2232f9">Drug treatment</span></p></td><td class="cl-0e228127"><p class="cl-0e225a09"><span class="cl-0e2232f9">RNA extraction</span></p></td><td class="cl-0e228122"><p class="cl-0e225a09"><span class="cl-0e2232f9">TechnicalRep3a</span></p></td><td class="cl-0e228124"><p class="cl-0e225a09"><span class="cl-0e2232f9">Microarray hybridization</span></p></td><td class="cl-0e228126"><p class="cl-0e225a09"><span class="cl-0e2232f9">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e228125"><p class="cl-0e225a09"><span class="cl-0e2232f9">CellCulture1</span></p></td><td class="cl-0e228123"><p class="cl-0e225a09"><span class="cl-0e2232f9">Drug treatment</span></p></td><td class="cl-0e228127"><p class="cl-0e225a09"><span class="cl-0e2232f9">RNA extraction</span></p></td><td class="cl-0e228122"><p class="cl-0e225a09"><span class="cl-0e2232f9">TechnicalRep1b</span></p></td><td class="cl-0e228124"><p class="cl-0e225a09"><span class="cl-0e2232f9">Microarray hybridization</span></p></td><td class="cl-0e228126"><p class="cl-0e225a09"><span class="cl-0e2232f9">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e228125"><p class="cl-0e225a09"><span class="cl-0e2232f9">CellCulture1</span></p></td><td class="cl-0e228123"><p class="cl-0e225a09"><span class="cl-0e2232f9">Drug treatment</span></p></td><td class="cl-0e228127"><p class="cl-0e225a09"><span class="cl-0e2232f9">RNA extraction</span></p></td><td class="cl-0e228122"><p class="cl-0e225a09"><span class="cl-0e2232f9">TechnicalRep2b</span></p></td><td class="cl-0e228124"><p class="cl-0e225a09"><span class="cl-0e2232f9">Microarray hybridization</span></p></td><td class="cl-0e228126"><p class="cl-0e225a09"><span class="cl-0e2232f9">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e22812c"><p class="cl-0e225a09"><span class="cl-0e2232f9">CellCulture1</span></p></td><td class="cl-0e22812a"><p class="cl-0e225a09"><span class="cl-0e2232f9">Drug treatment</span></p></td><td class="cl-0e22a81e"><p class="cl-0e225a09"><span class="cl-0e2232f9">RNA extraction</span></p></td><td class="cl-0e228128"><p class="cl-0e225a09"><span class="cl-0e2232f9">TechnicalRep3b</span></p></td><td class="cl-0e22812b"><p class="cl-0e225a09"><span class="cl-0e2232f9">Microarray hybridization</span></p></td><td class="cl-0e228129"><p class="cl-0e225a09"><span class="cl-0e2232f9">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="5f651b2c-117c-42e0-81e3-ef1cbc4f9e2b"></div>
<script>
var dest = document.getElementById("5f651b2c-117c-42e0-81e3-ef1cbc4f9e2b");
var template = document.getElementById("636992eb-40a9-4f9f-a9b6-64a24b83ded9");
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
<template id="69bb5003-2d62-478d-89c1-635a56b24bc3"><style>
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
</style><div class="tabwid"><style>.cl-0e3dd792{}.cl-0e393d5e{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-0e393d5f{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-0e393d60{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0e393d61{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0e396464{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e396465{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e396466{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e396467{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e396468{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e396469{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e39646a{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e39646b{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e39646c{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e39646d{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e39646e{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e398b6a{width:118pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e398b6b{width:125.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e398b6c{width:168.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e398b6d{width:83.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-0e3dd792'>
```
<caption class="Table Caption">

(\#tab:Table3)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-0e398b6d"><p class="cl-0e393d60"><span class="cl-0e393d5e">Sample</span></p></td><td class="cl-0e398b6a"><p class="cl-0e393d60"><span class="cl-0e393d5e">Geographical Location</span></p></td><td class="cl-0e398b6b"><p class="cl-0e393d60"><span class="cl-0e393d5e">Geoposition</span></p></td><td class="cl-0e398b6c"><p class="cl-0e393d60"><span class="cl-0e393d5e">Protocol</span></p></td><td class="cl-0e39646e"><p class="cl-0e393d60"><span class="cl-0e393d5e">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-0e396468"><p class="cl-0e393d61"><span class="cl-0e393d5f">Body of water 1</span></p></td><td class="cl-0e396465"><p class="cl-0e393d61"><span class="cl-0e393d5f">location name</span></p></td><td class="cl-0e396466"><p class="cl-0e393d61"><span class="cl-0e393d5f">latitude, longitude, altitude</span></p></td><td class="cl-0e396467"><p class="cl-0e393d61"><span class="cl-0e393d5f">Measurement of surface temperature</span></p></td><td class="cl-0e396464"><p class="cl-0e393d61"><span class="cl-0e393d5f">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e396468"><p class="cl-0e393d61"><span class="cl-0e393d5f">Body of water 2</span></p></td><td class="cl-0e396465"><p class="cl-0e393d61"><span class="cl-0e393d5f">location name</span></p></td><td class="cl-0e396466"><p class="cl-0e393d61"><span class="cl-0e393d5f">latitude, longitude, altitude</span></p></td><td class="cl-0e396467"><p class="cl-0e393d61"><span class="cl-0e393d5f">Measurement of surface temperature</span></p></td><td class="cl-0e396464"><p class="cl-0e393d61"><span class="cl-0e393d5f">dataFile2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e39646d"><p class="cl-0e393d61"><span class="cl-0e393d5f">Body of water n</span></p></td><td class="cl-0e39646a"><p class="cl-0e393d61"><span class="cl-0e393d5f">location name</span></p></td><td class="cl-0e39646b"><p class="cl-0e393d61"><span class="cl-0e393d5f">latitude, longitude, altitude</span></p></td><td class="cl-0e39646c"><p class="cl-0e393d61"><span class="cl-0e393d5f">Measurement of surface temperature</span></p></td><td class="cl-0e396469"><p class="cl-0e393d61"><span class="cl-0e393d5f">dataFile3</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="b467d6c3-a2d4-49aa-9251-934810a95865"></div>
<script>
var dest = document.getElementById("b467d6c3-a2d4-49aa-9251-934810a95865");
var template = document.getElementById("69bb5003-2d62-478d-89c1-635a56b24bc3");
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
<template id="28edbfd7-40cb-4f24-b8fe-b3246babb81d"><style>
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
</style><div class="tabwid"><style>.cl-0e563616{}.cl-0e4fe43c{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-0e4fe43d{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-0e4fe43e{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0e4fe43f{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0e501b6e{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b6f{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b70{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b71{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b72{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b73{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b74{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b75{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b76{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b77{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e501b78{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042f6{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042f7{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042f8{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042f9{width:87.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042fa{width:59.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042fb{width:155.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042fc{width:211.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042fd{width:132.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042fe{width:146.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0e5042ff{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-0e563616'>
```
<caption class="Table Caption">

(\#tab:Table4)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-0e5042f9"><p class="cl-0e4fe43e"><span class="cl-0e4fe43c">Source</span></p></td><td class="cl-0e5042fa"><p class="cl-0e4fe43e"><span class="cl-0e4fe43c">Sample</span></p></td><td class="cl-0e5042fb"><p class="cl-0e4fe43e"><span class="cl-0e4fe43c">Sample Number</span></p></td><td class="cl-0e5042fc"><p class="cl-0e4fe43e"><span class="cl-0e4fe43c">Temporal Range</span></p></td><td class="cl-0e5042fd"><p class="cl-0e4fe43e"><span class="cl-0e4fe43c">Protocol 1</span></p></td><td class="cl-0e5042fe"><p class="cl-0e4fe43e"><span class="cl-0e4fe43c">Protocol 2</span></p></td><td class="cl-0e5042ff"><p class="cl-0e4fe43e"><span class="cl-0e4fe43c">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-0e501b70"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Database URL 1</span></p></td><td class="cl-0e501b6e"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Dataset 1</span></p></td><td class="cl-0e501b6f"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Number of samples in the dataset</span></p></td><td class="cl-0e501b73"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Range of measurements reported in the dataset</span></p></td><td class="cl-0e501b74"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Data assimilation procedure</span></p></td><td class="cl-0e501b71"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Method to generate output data</span></p></td><td class="cl-0e501b72"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e501b70"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Database URL 1</span></p></td><td class="cl-0e501b6e"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Dataset 2</span></p></td><td class="cl-0e501b6f"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Number of samples in the dataset</span></p></td><td class="cl-0e501b73"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Range of measurements reported in the dataset</span></p></td><td class="cl-0e501b74"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Data assimilation procedure</span></p></td><td class="cl-0e501b71"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Method to generate output data</span></p></td><td class="cl-0e501b72"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0e501b77"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Database URL 2</span></p></td><td class="cl-0e501b78"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Dataset n</span></p></td><td class="cl-0e501b75"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Number of samples in the dataset</span></p></td><td class="cl-0e501b76"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Range of measurements reported in the dataset</span></p></td><td class="cl-0e5042f7"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Data assimilation procedure</span></p></td><td class="cl-0e5042f8"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">Method to generate output data</span></p></td><td class="cl-0e5042f6"><p class="cl-0e4fe43f"><span class="cl-0e4fe43d">dataFile2</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="97dbe78f-bcfd-4e7b-b312-376d61bc419c"></div>
<script>
var dest = document.getElementById("97dbe78f-bcfd-4e7b-b312-376d61bc419c");
var template = document.getElementById("28edbfd7-40cb-4f24-b8fe-b3246babb81d");
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

