---
params:
  projectDir: "N:/IMD_DRR_Template"
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
date: "06 May, 2020"
abstract: "Abstract Should go here. Multiple Lines are okay; it'll format correctly. Do not put the abstract in the text section below; this will allow For reuse of the abtract in all associated products. </br> </br>  The Abstract should succinctly describe the study, the assay(s) performed,  the resulting data, and their reuse potential, but should not make any  claims regarding new scientific findings. No references are allowed in this section. "
editor_options:
  chunk_output_type: inline
csl: https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl
link-citations: yes
output:
  html_document:
    df_print: kable
    fig_caption: true
    dev: svg
    highlight: haddock
    keep_md: yes
    smart: no
    theme: journal
    css: "common/journalnps.min.css"
    toc: yes
    toc_float: true
    number_sections: true
    includes:
        before_body:
          - "common/header.html"
        after_body: 
          - "common/footer.html"
  word_document:
    df_print: kable
    fig_caption: yes
    fig_height: 5
    fig_width: 5
    highlight: haddock
    reference_docx: "common/DRR Word Template.docx"
---





<hr>
# Background & Introduction
The Background & Summary should provide an overview of the study design, the assay(s) performed, and the data generated, including any background information needed to put this study in the context of previous work and the literature, and should reference literature as needed. The section should also briefly outline the broader goals that motivated collection of the data, as well as their potential reuse value. We also encourage authors to include a figure that provides a schematic overview of the study and assay(s) design. 

# Methods
The Methods should include detailed text describing any steps or procedures used in producing the data, including full descriptions of the experimental design, data acquisition assays, and any computational processing (e.g. normalization, image feature extraction). See the detailed section in our submission guidelines for advice on writing a transparent and reproducible methods section. Related methods should be grouped under corresponding subheadings where possible, and methods should be described in enough detail to allow other researchers to interpret and repeat, if required, the full study. Specific data outputs should be explicitly referenced via data citation (see Data Records and Citing Data, below).

Authors should cite previous descriptions of the methods under use, but ideally the method descriptions should be complete enough for others to understand and reproduce the methods and processing steps without referring to associated publications. There is no limit to the length of the Methods section.

Authors are encouraged to consider creating a figure that outlines the experimental workflow(s) used to generate and analyse the data output(s) (Figure 1).


<div class="figure" style="text-align: center">
<img src="figures/ProcessingWorkflow.png" alt="**Figure 1.** Example general workflow to include in the methods section." width="550" />
<p class="caption">**Figure 1.** Example general workflow to include in the methods section.</p>
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

The data within the data records listed above have been reviewed by staff in the NPS Inventory and Monitoring Division to ensure accuracy, completeness, and consistency with documented data quality standards, as well as for usability and reproducibility. The *Dataset 2 FULL TITLE* is suitable for its intended use as of the date of processing (2020-05-06).

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
   install.packages(RRpackages[!inst], dep = TRUE)
}
lapply(RRpackages, library, character.only = TRUE)

# __________________________________
# Now repeat for packages used in the analyses
pkgList <- c("devtools",        # tends to be needed/useful
             "RODBC",           # for connection to a database. 
             "EML",             # for data package creation and validation
             "kableExtra",      # added features for table formatting. 
             "english",         # converts numbers into english. Good for all that English stuff.
             "remotes",         # for install_github()
             "dplyr")           # useful

inst <- pkgList %in% installed.packages()
if (length(pkgList[!inst]) > 0) {
   install.packages(pkgList[!inst], dep = TRUE, 
                    repos = "https://cloud.r-project.org")
}

lapply(pkgList, library, character.only = TRUE, quietly = TRUE)

if (! "EMLassemblyline" %in% installed.packages()) remotes::install_github("EDIorg/EMLassemblyline")
require("EMLassemblyline")  

# create stub of citations for packages
pkgBibTex <- lapply(c("base", pkgList, RRpackages), citation)

# pkgBibTex <- do.call()

knitr::opts_chunk$set(
   root.dir = params$projectDir,  # from YAML parameter, knitr instead of setwd()
   echo = TRUE,
   comment = " ",
   dev = "svg",
   fig.path = "figures/",
   tidy.opts = list(width.cutoff = 60),
   tidy = TRUE
   )
# if ggplot, update theme to default to centered titles
if ("ggplot2" %in% .packages()) {
   theme_update(plot.title = element_text(hjust = 0.5))
}

setwd(params$projectDir)

# Write YAML parameters to file for consistent reuse across report and data packages
save(params,file="data/temp/reportParameters.RData")
# Load datasets for use

if (file.exists(file="data/temp/projectMetadata.RData")) {
  load(file="data/temp/projectMetadata.RData")
} else{
  projectMetadata<-list()
}
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

kable(Table1, 
      col.names=c("Subjects","Protocol 1","Protocol 2","Protocol 3","Protocol 4","Data"),
      caption="**Table 1.** Experimental study example Data Records table.") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"),full_width=F) %>%
  footnote(general="This table was generated using the kableExtra package.")

Source<-c("CellCulture1","CellCulture1","CellCulture1","CellCulture1","CellCulture1","CellCulture1")
Protocol1<-c("Drug treatment","Drug treatment","Drug treatment","Drug treatment","Drug treatment","Drug treatment")
Protocol2<-c("RNA extraction","RNA extraction","RNA extraction","RNA extraction","RNA extraction","RNA extraction")
Samples<-c("TechnicalRep1a","TechnicalRep2a","TechnicalRep3a","TechnicalRep1b","TechnicalRep2b","TechnicalRep3b")
Protocol3<-c("Microarray hybridization","Microarray hybridization","Microarray hybridization","Microarray hybridization","Microarray hybridization","Microarray hybridization")
Data<-c("GEOXXXXX","GEOXXXXX","GEOXXXXX","GEOXXXXX","GEOXXXXX","GEOXXXXX")
Table<-data.frame(Source,Protocol1,Protocol2,Samples,Protocol3,Data)

kable(Table, 
      col.names=c("Subjects","Protocol 1","Protocol 2","Samples","Protocol 3","Data"),
      caption="**Table 2.** Experimental study with replicates Data Records table.") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"),full_width=F)


Sample<-c("Body of water 1","Body of water 2","Body of water n")
geoloc<-c("location name","location name","location name")
geopos<-c("latitude, longitude, altitude","latitude, longitude, altitude","latitude, longitude, altitude")
protocol<-c("Measurement of surface temperature","Measurement of surface temperature","Measurement of surface temperature")
data<-c("dataFile1","dataFile2","dataFile3")
Table<-data.frame(Sample,geoloc,geopos,protocol,data)

kable(Table, 
      col.names=c("Sample","Geographical Location","Geoposition","Protocol","Data"),
      caption="**Table 3.** Observational study example Data Records table.") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"),full_width=F)


c1<-c("Database URL 1","Database URL 1","Database URL 2")
c2<-c("Dataset 1","Dataset 2","Dataset n")
c3<-c("Number of samples in the dataset","Number of samples in the dataset","Number of samples in the dataset")
c4<-c("Range of measurements reported in the dataset","Range of measurements reported in the dataset","Range of measurements reported in the dataset")
c5<-c("Data assimilation procedure","Data assimilation procedure","Data assimilation procedure")
c6<-c("Method to generate output data","Method to generate output data","Method to generate output data")
c7<-c("dataFile1","dataFile1","dataFile2")
Table<-data.frame(c1,c2,c3,c4,c5,c6,c7)

kable(Table, 
      col.names=c("Source","Sample","Sample Number","Temporal Range","Protocol 1","Protocol2","Data"),
      caption="**Table 4.** Data aggregation study example Data Records table.") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"),full_width=F)
```

\pagebreak

# Appendix D. Session and Version Information

```
  R version 3.6.2 (2019-12-12)
  Platform: x86_64-w64-mingw32/x64 (64-bit)
  Running under: Windows 10 x64 (build 17134)
  
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
   [1] EMLassemblyline_2.6.1 remotes_2.1.1         english_1.2-5        
   [4] kableExtra_1.1.0      EML_2.0.2             RODBC_1.3-16         
   [7] devtools_2.3.0        usethis_1.6.0         knitcitations_1.0.10 
  [10] RefManageR_1.2.12     bibtex_0.4.2.2        htmltools_0.4.0      
  [13] rmdformats_0.3.7      yaml_2.2.1            rmdHelpers_1.2       
  [16] dplyr_0.8.5           texreg_1.36.23        papeR_1.0-4          
  [19] xtable_1.8-4          car_3.0-7             carData_3.0-3        
  [22] kimisc_0.4            R.rsp_0.43.2          dataMaid_1.4.0       
  [25] knitr_1.28            pander_0.6.3          rmarkdown_2.1        
  [28] markdown_1.1         
  
  loaded via a namespace (and not attached):
   [1] colorspace_1.4-1  ellipsis_0.3.0    rio_0.5.16        rprojroot_1.3-2  
   [5] fs_1.4.1          rstudioapi_0.11   fansi_0.4.1       lubridate_1.7.8  
   [9] xml2_1.3.1        R.methodsS3_1.8.0 robustbase_0.93-6 pkgload_1.0.2    
  [13] jsonlite_1.6.1    png_0.1-7         R.oo_1.23.0       readr_1.3.1      
  [17] compiler_3.6.2    httr_1.4.1        backports_1.1.6   assertthat_0.2.1 
  [21] lazyeval_0.2.2    cli_2.0.2         formatR_1.7       prettyunits_1.1.1
  [25] tools_3.6.2       gtable_0.3.0      glue_1.4.0        gmodels_2.18.1   
  [29] V8_3.0.2          Rcpp_1.0.4.6      cellranger_1.1.0  vctrs_0.2.4      
  [33] gdata_2.18.0      xfun_0.13         stringr_1.4.0     ps_1.3.2         
  [37] openxlsx_4.1.4    testthat_2.3.2    rvest_0.3.5       lifecycle_0.2.0  
  [41] gtools_3.8.2      jqr_1.1.0         DEoptimR_1.0-8    MASS_7.3-51.4    
  [45] scales_1.1.0      jsonld_2.1        hms_0.5.3         curl_4.3         
  [49] memoise_1.1.0     gridExtra_2.3     ggplot2_3.3.0     stringi_1.4.6    
  [53] highr_0.8         desc_1.2.0        emld_0.4.0        pkgbuild_1.0.6   
  [57] zip_2.0.4         rlang_0.4.5       pkgconfig_2.0.3   evaluate_0.14    
  [61] purrr_0.3.4       processx_3.4.2    tidyselect_1.0.0  plyr_1.8.6       
  [65] magrittr_1.5      bookdown_0.18     R6_2.4.1          generics_0.0.2   
  [69] pillar_1.4.3      haven_2.2.0       foreign_0.8-72    withr_2.2.0      
  [73] abind_1.4-5       tibble_3.0.0      crayon_1.3.4      uuid_0.1-4       
  [77] grid_3.6.2        readxl_1.3.1      data.table_1.12.8 callr_3.4.3      
  [81] forcats_0.5.0     webshot_0.5.2     digest_0.6.25     R.cache_0.14.0   
  [85] R.utils_2.9.2     munsell_0.5.0     viridisLite_0.3.0 sessioninfo_1.1.1
```

```
  [1] "2020-05-06 20:01:48 MDT"
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
Generally, a Data Publication Report should have fewer than ten tables, but more
may be allowed when needed.

### Example Data Record Summary Tables
Here, we provide four generic ‘Table 1’ examples, including two experimental
study examples, one observational study example, and an example for an
aggregated dataset of the type that may result from a meta-analysis. 

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>**Table 1.** Experimental study example Data Records table.</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Subjects </th>
   <th style="text-align:left;"> Protocol 1 </th>
   <th style="text-align:left;"> Protocol 2 </th>
   <th style="text-align:left;"> Protocol 3 </th>
   <th style="text-align:left;"> Protocol 4 </th>
   <th style="text-align:left;"> Data </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Mouse1 </td>
   <td style="text-align:left;"> Drug treatment </td>
   <td style="text-align:left;"> Liver dissection </td>
   <td style="text-align:left;"> RNA extraction </td>
   <td style="text-align:left;"> RNA-Seq </td>
   <td style="text-align:left;"> GEOXXXXX </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mouse2 </td>
   <td style="text-align:left;"> Drug treatment </td>
   <td style="text-align:left;"> Liver dissection </td>
   <td style="text-align:left;"> RNA extraction </td>
   <td style="text-align:left;"> RNA-Seq </td>
   <td style="text-align:left;"> GEOXXXXX </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mousen </td>
   <td style="text-align:left;"> Drug treatment </td>
   <td style="text-align:left;"> Liver dissection </td>
   <td style="text-align:left;"> RNA extraction </td>
   <td style="text-align:left;"> RNA-Seq </td>
   <td style="text-align:left;"> GEOXXXXX </td>
  </tr>
</tbody>
<tfoot>
<tr><td style="padding: 0; border: 0;" colspan="100%"><span style="font-style: italic;">Note: </span></td></tr>
<tr><td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> This table was generated using the kableExtra package.</td></tr>
</tfoot>
</table>

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>**Table 2.** Experimental study with replicates Data Records table.</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Subjects </th>
   <th style="text-align:left;"> Protocol 1 </th>
   <th style="text-align:left;"> Protocol 2 </th>
   <th style="text-align:left;"> Samples </th>
   <th style="text-align:left;"> Protocol 3 </th>
   <th style="text-align:left;"> Data </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> CellCulture1 </td>
   <td style="text-align:left;"> Drug treatment </td>
   <td style="text-align:left;"> RNA extraction </td>
   <td style="text-align:left;"> TechnicalRep1a </td>
   <td style="text-align:left;"> Microarray hybridization </td>
   <td style="text-align:left;"> GEOXXXXX </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CellCulture1 </td>
   <td style="text-align:left;"> Drug treatment </td>
   <td style="text-align:left;"> RNA extraction </td>
   <td style="text-align:left;"> TechnicalRep2a </td>
   <td style="text-align:left;"> Microarray hybridization </td>
   <td style="text-align:left;"> GEOXXXXX </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CellCulture1 </td>
   <td style="text-align:left;"> Drug treatment </td>
   <td style="text-align:left;"> RNA extraction </td>
   <td style="text-align:left;"> TechnicalRep3a </td>
   <td style="text-align:left;"> Microarray hybridization </td>
   <td style="text-align:left;"> GEOXXXXX </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CellCulture1 </td>
   <td style="text-align:left;"> Drug treatment </td>
   <td style="text-align:left;"> RNA extraction </td>
   <td style="text-align:left;"> TechnicalRep1b </td>
   <td style="text-align:left;"> Microarray hybridization </td>
   <td style="text-align:left;"> GEOXXXXX </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CellCulture1 </td>
   <td style="text-align:left;"> Drug treatment </td>
   <td style="text-align:left;"> RNA extraction </td>
   <td style="text-align:left;"> TechnicalRep2b </td>
   <td style="text-align:left;"> Microarray hybridization </td>
   <td style="text-align:left;"> GEOXXXXX </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CellCulture1 </td>
   <td style="text-align:left;"> Drug treatment </td>
   <td style="text-align:left;"> RNA extraction </td>
   <td style="text-align:left;"> TechnicalRep3b </td>
   <td style="text-align:left;"> Microarray hybridization </td>
   <td style="text-align:left;"> GEOXXXXX </td>
  </tr>
</tbody>
</table>

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>**Table 3.** Observational study example Data Records table.</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Sample </th>
   <th style="text-align:left;"> Geographical Location </th>
   <th style="text-align:left;"> Geoposition </th>
   <th style="text-align:left;"> Protocol </th>
   <th style="text-align:left;"> Data </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Body of water 1 </td>
   <td style="text-align:left;"> location name </td>
   <td style="text-align:left;"> latitude, longitude, altitude </td>
   <td style="text-align:left;"> Measurement of surface temperature </td>
   <td style="text-align:left;"> dataFile1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Body of water 2 </td>
   <td style="text-align:left;"> location name </td>
   <td style="text-align:left;"> latitude, longitude, altitude </td>
   <td style="text-align:left;"> Measurement of surface temperature </td>
   <td style="text-align:left;"> dataFile2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Body of water n </td>
   <td style="text-align:left;"> location name </td>
   <td style="text-align:left;"> latitude, longitude, altitude </td>
   <td style="text-align:left;"> Measurement of surface temperature </td>
   <td style="text-align:left;"> dataFile3 </td>
  </tr>
</tbody>
</table>

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>**Table 4.** Data aggregation study example Data Records table.</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Source </th>
   <th style="text-align:left;"> Sample </th>
   <th style="text-align:left;"> Sample Number </th>
   <th style="text-align:left;"> Temporal Range </th>
   <th style="text-align:left;"> Protocol 1 </th>
   <th style="text-align:left;"> Protocol2 </th>
   <th style="text-align:left;"> Data </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Database URL 1 </td>
   <td style="text-align:left;"> Dataset 1 </td>
   <td style="text-align:left;"> Number of samples in the dataset </td>
   <td style="text-align:left;"> Range of measurements reported in the dataset </td>
   <td style="text-align:left;"> Data assimilation procedure </td>
   <td style="text-align:left;"> Method to generate output data </td>
   <td style="text-align:left;"> dataFile1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Database URL 1 </td>
   <td style="text-align:left;"> Dataset 2 </td>
   <td style="text-align:left;"> Number of samples in the dataset </td>
   <td style="text-align:left;"> Range of measurements reported in the dataset </td>
   <td style="text-align:left;"> Data assimilation procedure </td>
   <td style="text-align:left;"> Method to generate output data </td>
   <td style="text-align:left;"> dataFile1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Database URL 2 </td>
   <td style="text-align:left;"> Dataset n </td>
   <td style="text-align:left;"> Number of samples in the dataset </td>
   <td style="text-align:left;"> Range of measurements reported in the dataset </td>
   <td style="text-align:left;"> Data assimilation procedure </td>
   <td style="text-align:left;"> Method to generate output data </td>
   <td style="text-align:left;"> dataFile2 </td>
  </tr>
</tbody>
</table>

