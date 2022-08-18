---
date: "18 August, 2022"
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



# DRR TITLE 
### Data Release Report 1111111




### Jane Doe  <svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#a6ce39;overflow:visible;position:relative;"> <xmlns:xlink="http://www.w3.org/1999/xlink"><a xlink:href= "https://orcid.org/0000-1111-2222-3333"><path d="M294.8 188.2h-45.92V342h47.47c67.62 0 83.12-51.34 83.12-76.91 0-41.64-26.54-76.9-84.67-76.9zM256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm-80.79 360.8h-29.84v-207.5h29.84zm-14.92-231.1a19.57 19.57 0 1 1 19.57-19.57 19.64 19.64 0 0 1 -19.57 19.57zM300 369h-81V161.3h80.6c76.73 0 110.4 54.83 110.4 103.8C410 318.4 368.4 369 300 369z"/></a></svg>
NPS Inventory and Monitory Division<br>
1201 Oakrdige Dr, Suite 150<br>
Fort Collins, Colorado 

### John Doe  

Managed Business Solutions (MBS), a Sealaska Company<br>
Contractor to the National Park Service<br>
Natural Resource Stewardship and Science Directorate<br>
1201 Oakridge Dr, Suite 150<br>
Fort Collins, Colorado 






#### 18 August, 2022 <!-- publication date - defaults to current system date -->

<h4 class="text-center">

Abstract

</h4>

<!-- abstract heading - don't edit -->

   
Abstract Should go here. Multiple Lines are okay; it'll format correctly. Pay careful attendtion to non-standard characters, line breaks, carriage returns, and curly-quotes. You may find it useful to write the abstract in NotePad++ or some other text editor and not a word processor (such as Microsoft Word).



The Abstract should succinctly describe the study, the assay(s) performed, the resulting data, and their reuse potential, but should not make any claims regarding new scientific findings. No references are allowed in this section. <!-- pulls from the abstract you supplied above - don't edit here! -->



<hr>

# Background & Introduction

The Background & Summary should provide an overview of the study design, the assay(s) performed, and the data generated, including any background information needed to put this study in the context of previous work and the literature, and should reference literature as needed. Literature should be cited both in the text and in the References section below using the appropriate [Chicago Manual of Style](https://www.chicagomanualofstyle.org/tools_citationguide/citation-guide-2.html) author-date format.

The section should also briefly outline the broader goals that motivated collection of the data, as well as their potential reuse value. We also encourage authors to include a figure that provides a schematic overview of the study and assay(s) design.

# Methods

Ideally these methods are identical to the methods listed in the metadata accompanying the data package that the DRR describes.Future versions of this template will pull directly from metadata.

The Methods should include cite previous methods under use but also be detailed enough describing data production including full descriptions of the experimental design, data acquisition assays, and any computational processing (e.g. normalization, image feature extraction) that other can understand and reproduce the methods and processing steps without referring to associated publications. Related methods should be grouped under corresponding subheadings where possible, and methods should be described in enough detail to allow other researchers to interpret and repeat, if required, the full study.

Specific data inputs and outputs should be explicitly cited in the text and included in the References section below. See the [USGS data citation guidelines](https://www.usgs.gov/data-management/data-citation) for examples of how to cite data in text and in the References section.

Authors are encouraged to consider creating a figure that outlines the experimental workflow(s) used to generate and analyse the data output(s) (Figure 1).

<div class="figure" style="text-align: center">
<img src="output/temp/example_DRR/figures/ProcessingWorkflow.png" alt="Example general workflow to include in the methods section." width="100%" />
<p class="caption">(\#fig:figure1)Example general workflow to include in the methods section.</p>
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

The Data Records section should be used to explain each data record associated with this work (for instance, a data package), including the repository where this information is stored, and provide an overview of the data files and their formats. Each external data record should be cited.

Tables should be used to support the data records and should clearly indicate the samples and subjects (study inputs), their provenance, and the experimental manipulations performed on each (see example Tables below). They should also specify the data output resulting from each data-collection or analytical step, should these form part of the archived record.

## Summary of datasets created (Required)

This DRR describes the data package Data package1 Title which contains a metadata file and 2 data files. These data were compiled by the National Park Service Biological Resources Division and are available at https://doi.org/10.57830/12342567. The files in the data package are:

**my_data.csv -** This is a short description of the corresponding data file (a good guideline is 10 words or less).

**my_data2.csv -** This is a short (perhaps 10 words) description of the 2nd data file.

*Also include a table explaining provenance of datasets*

See Appendix for additional notes and examples.

# Data Quality Evaluation (required)

The Data Quality Evaluation section should present any analyses that are needed to support the technical quality of the dataset. This section may be supported by figures and tables, as needed. *This is a required section*; authors must provide information to justify the reliability of their data. Wherever possible & appropriate, data quality evaluation should be presented in the context of data standards and quality control procedures as prescribed in the project's quality assurance planning documentation.

**Required elements for this section**

*Stock Text to include:*

The data within the data records listed above have been reviewed by staff in the NPS Inventory and Monitoring Division to ensure accuracy, completeness, and consistency with documented data quality standards, as well as for usability and reproducibility. The *Data package1 Title* is suitable for its intended use as of the date of processing (2022-08-18).

*Required Table*

Summary of any data qualification codes used, their definitions, and the fields to which they apply.

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

# References (required)

Bibliographic information for any works cited in the above sections, using the standard *NPS NR Publication Series* referencing style.

In line with emerging [industry-wide standards for data citation](https://www.nature.com/articles/sdata2018259), references to all datasets described or used in the manuscript should be cited in the text and listed in the 'References' section in the same manner as a conventional literature reference.

ITIS. 2020. Integrated Taxonomic Information System. Available at: <https://www.itis.gov/> (accessed 29 January 2020).

National Park Service (NPS). 2010. Draft Reference Manual RM 66B: Handling Protected Information. National Park Service, Washington, DC. (Available at <https://irma.nps.gov/DataStore/Reference/Profile/2224216>)

National Park Service (NPS). 2019. NPSpecies - the National Park Service biodiversity database. Available at: <https://irma.nps.gov/NPSpecies/> (accessed xx).

Office of Management and Budget (OMB). 2013. Open Data Policy-Managing Information as an Asset. Office of Management and Budget. (Available at <https://digital.gov/open-data-policy-m-13-13/>)

U.S. Fish & Wildlife Service (USFWS). 2019. ECOS Environmental Conservation Online System. Available at: <https://ecos.fws.gov/ecp/> (accessed xx).

U.S. Government Printing Office (GPO). 2013. Making Open and Machine Readable the New Default for Government Information. Executive Order 13642.(Available at <https://www.govinfo.gov/content/pkg/CFR-2014-title3-vol1/pdf/CFR-2014-title3-vol1-eo13642.pdf>)

\pagebreak

# Acknowledgements (optional)

The Acknowledgements should contain text acknowledging non-author contributors. Acknowledgements should be brief, and should not include thanks to anonymous referees and editors or effusive comments. Grant or contribution numbers may be acknowledged.

# Appendix A. Code Listing


```r
# The title of your DRR (all upper case is enforced):
title <- "DRR TITLE"

# Optional and should only be included if publishing to the
# semi-official DRR series. Contact Joe if you are. If not,
# leave as NULL
reportNumber <- 1111111

# This should match the Data Store Reference ID for this
# DRR. Eventually we should be able to pull this directly
# from the data package metadata.
DRR_DSRefID <- 7654321

# Can eventually pull authors from data package metadata,
# but that assumes data package authors and DRR authors are
# the same...

# the number of authors for the DRR:
AuthorNumb <- 2

# DRR Author #1 (which may differ from data package
# authors!)
AuthorName1 <- "Jane Doe"

# Author 1 affiliation and address. Note use of <br> for
# line breaks.
AuthorAffiliation1 <- "NPS Inventory and Monitory Division<br>
1201 Oakrdige Dr, Suite 150<br>
Fort Collins, Colorado"

# Author 1 ORCID iD. If no ORCID iD, set to NA (not
# applicable). See https://www.orcid.org to register an
# ORCID.
AuthorORCID1 <- "0000-1111-2222-3333"

# DRR Author #2
AuthorName2 <- "John Doe"
AuthorAffiliation2 <- "Managed Business Solutions (MBS), a Sealaska Company<br>
Contractor to the National Park Service<br>
Natural Resource Stewardship and Science Directorate<br>
1201 Oakridge Dr, Suite 150<br>
Fort Collins, Colorado"
AuthorORCID2 <- NA  #this author does not have an ORCID.

# DRR Author #3... and so on. make sure the number of
# authors is equal to the value set for AuthorNumb
# AuthorName3<-'Author Name 3' AuthorAffiliation3<-'Author
# Affilation 3'

DRRabstract <- "
Abstract Should go here. Multiple Lines are okay; it'll format correctly. Pay careful attendtion to non-standard characters, line breaks, carriage returns, and curly-quotes. You may find it useful to write the abstract in NotePad++ or some other text editor and not a word processor (such as Microsoft Word).\n\n

The Abstract should succinctly describe the study, the assay(s) performed, the resulting data, and their reuse potential, but should not make any claims regarding new scientific findings. No references are allowed in this section."

# DataStore reference ID for the data package associated
# with this report. You must have at least one data
# package.Eventually, we will automate importing much of
# this information from metadata and include the ability to
# describe multiple data packages in a single DRR.
dataPackage1RefID <- 12342567

# Must match title in data store.
dataPackage1Title <- "Data package1 Title"

# Must match descriptions in the data package metadata
dataPackage1Description <- "Short title for data package1"

# generates your data package DOI based on the data package
# DataStore reference ID. This is different from the DRR
# DOI!
dataPackage1DOI <- paste0("https://doi.org/10.57830/", dataPackage1RefID)

# orc<-fontawesome::fa('orcid')

# The number of data files in the data package described by
# the DRR. Exclude metadata files! For in this example the
# data package includes 3 files at upload: one metadata
# file and two data files.
dataPackage1_filenumb <- 2

# The file name for the first data file in the data
# package. Each data package must include at least one data
# file.
dataPackage1_datafile1_name <- "my_data.csv"

dataPackage1_datafile1_descript <- "This is a short description of the corresponding data file (a good guideline is 10 words or less)."

# Should match file name in data store/metadata.
dataPackage1_datafile2_name <- "my_data2.csv"

dataPackage1_datafile2_descript <- "This is a short (perhaps 10 words) description of the 2nd data file."

# Add additional file names and descriptions following the
# format above.

# Write parameters to file for consistent reuse across
# report and data packages
save(title, reportNumber, DRR_DSRefID, AuthorNumb, AuthorName1,
    AuthorAffiliation1, AuthorName2, AuthorAffiliation2, DRRabstract,
    dataPackage1RefID, dataPackage1Title, dataPackage1Description,
    dataPackage1DOI, dataPackage1_filenumb, dataPackage1_datafile1_name,
    dataPackage1_datafile1_descript, dataPackage1_datafile2_name,
    dataPackage1_datafile2_descript, file = here::here("output",
        "temp", "reportParameters.Rdata"))

date <- format(Sys.time(), "%d %B, %Y")
title <- toupper(title)
cat("#", title, "\n")
if (!is.null(reportNumber)) {
    subtitle <- paste0("Data Release Report ", reportNumber)
    cat("###", subtitle)
}



# This setup code loads both reproducible reporting
# packages (delete those not needed) and packages for the
# actual project.  Note that it also generates the start of
# a BibTex literature cited including the citations for R
# and all used packages reproducible reporting packages
RRpackages <- c("markdown", "rmarkdown", "pander", "knitr", "fontawesome",
    "dataMaid", "R.rsp", "kimisc", "papeR", "rmdHelpers", "yaml",
    "rmdformats", "htmltools", "bibtex", "RefManageR", "knitcitations")

inst <- RRpackages %in% installed.packages()
if (length(RRpackages[!inst]) > 0) {
    install.packages(RRpackages[!inst], dep = TRUE, repos = "https://cloud.r-project.org")
}
lapply(RRpackages, library, character.only = TRUE)

# __________________________________ Now repeat for
# packages used in the analyses
pkgList <- c("devtools", "RODBC", "EML", "flextable", "english",
    "remotes", "dplyr", "ggplot2", "plotly")

inst <- pkgList %in% installed.packages()
if (length(pkgList[!inst]) > 0) {
    install.packages(pkgList[!inst], dep = TRUE, repos = "https://cloud.r-project.org")
}

lapply(pkgList, library, character.only = TRUE, quietly = TRUE)

if (!"EMLassemblyline" %in% installed.packages()) remotes::install_github("EDIorg/EMLassemblyline")
require("EMLassemblyline")

# create stub of citations for packages
pkgBibTex <- lapply(c("base", pkgList, RRpackages), citation)

knitr::opts_chunk$set(echo = TRUE, fig.path = here::here("output",
    "temp", "common"), message = TRUE, warning = TRUE, comment = " ",
    dev = "svg", out.width = "100%", tidy = TRUE, tidy.opts = list(width.cutoff = 60))
# if ggplot, update theme to default to centered titles
if ("ggplot2" %in% .packages()) {
    theme_update(plot.title = element_text(hjust = 0.5))
}


## General Utility Functions

source(here::here("output", "temp", "common", "SharedFunctions.R"))

# Set up table template
NPS_theme <- function(x, ...) {
    x <- colformat_double(x, big.mark = ",", decimal.mark = ".",
        digits = 1)
    x <- colformat_int(x, big.mark = ",")
    x <- colformat_date(x, fmt_date = "%Y-%m-%d")
    x <- set_table_properties(x, layout = "fixed")
    x <- border_remove(x)
    std_border <- fp_border_default(width = 1, color = "black")
    x <- hline_bottom(x, part = "body")
    x <- hline_bottom(x, part = "header")
    x <- hline_top(x, part = "header")
    x <- bold(x, bold = TRUE, part = "header")
    x <- set_table_properties(x, width = 0, layout = "autofit")
    x <- align_nottext_col(x, align = "right", header = TRUE,
        footer = TRUE)
    x <- align_text_col(x, align = "left", header = TRUE, footer = TRUE)
    x <- valign(x, valign = "bottom", part = "header")
    x <- valign(x, valign = "top", part = "body")
}

set_flextable_defaults(font.family = "Arial", font.size = 9,
    font.color = "black", theme_fun = NPS_theme, )

names <- NULL
address <- NULL
ORCID <- NULL

# turn author data into a dataframe
for (i in 1:AuthorNumb) {
    names <- append(names, get(paste0("AuthorName", i)))
    address <- append(address, get(paste0("AuthorAffiliation",
        i)))
    ORCID <- append(ORCID, get(paste0("AuthorORCID", i)))
}
contact <- data.frame(names, address, ORCID)
for (i in 1:AuthorNumb) {
    curr <- contact[i, ]
    cat("###", curr$names, " ")
    if (is.na(curr$ORCID)) {
        cat("\n")
    }
    if (!is.na(curr$ORCID)) {
        orc <- fontawesome::fa("orcid", fill = "#a6ce39")
        orc <- gsub(";\">", ";\"> <xmlns:xlink=\"http://www.w3.org/1999/xlink\"><a xlink:href= \"dummyhtml\">",
            orc)
        orc <- gsub("dummyhtml", paste0("https://orcid.org/",
            curr$ORCID), orc)
        orc <- gsub("</svg>", "</a></svg>", orc)
        cat({
            {
                orc
            }
        })
    }
    cat("\n")
    cat(curr$address, "\n\n")

}

# formatting template:
template <- "#### %s

%s


"
names <- NULL
address <- NULL
ORCID <- NULL

# turn author data into a dataframe
for (i in 1:AuthorNumb) {
    names <- append(names, get(paste0("AuthorName", i)))
    address <- append(address, get(paste0("AuthorAffiliation",
        i)))
    # ORCID<-append(ORCID, get(paste0('AuthorORCID', i)))
}
contact <- data.frame(names, address)

# add author data to the template & write to html
for (i in 1:AuthorNumb) {
    curr <- contact[i, ]
    cat(sprintf(template, curr$names, curr$address))
}

# Load datasets for use (example commented out below)
# nccnbirds::LoadLandbirds(here::here('data', 'final'),
# cache = FALSE)
include_graphics("output/temp/example_DRR/figures/ProcessingWorkflow.png")

# formatting template:
template <- "**%s -** %s

"
names <- NULL
descript <- NULL

# turn author data into a dataframe
for (i in 1:dataPackage1_filenumb) {
    names <- append(names, get(paste0("dataPackage1_datafile",
        i, "_name")))
    descript <- append(descript, get(paste0("dataPackage1_datafile",
        i, "_descript")))
}
filelist <- data.frame(names, descript)

# add author data to the template & write to html
for (i in 1:dataPackage1_filenumb) {
    curr <- filelist[i, ]
    cat(sprintf(template, curr$names, curr$descript))
}

sessionInfo()
Sys.time()
T1Subjects <- c("Mouse1", "Mouse2", "Mousen")
T1Protocol1 <- c("Drug treatment", "Drug treatment", "Drug treatment")
T1Protocol2 <- c("Liver dissection", "Liver dissection", "Liver dissection")
T1Protocol3 <- c("RNA extraction", "RNA extraction", "RNA extraction")
T1Protocol4 <- c("RNA-Seq", "RNA-Seq", "RNA-Seq")
T1Data <- c("GEOXXXXX", "GEOXXXXX", "GEOXXXXX")
Table1 <- data.frame(T1Subjects, T1Protocol1, T1Protocol2, T1Protocol3,
    T1Protocol4, T1Data)

T1 <- flextable(Table1)
T1 <- set_caption(T1, "Experimental study example Data Records table. [Table created using the flextable package.]")
T1 <- set_header_labels(T1, T1Subjects = "Subjects", T1Protocol1 = "Protocol 1",
    T1Protocol2 = "Protocol 2", T1Protocol3 = "Protocol 3", T1Protocol4 = "Protocol 4",
    T1Data = "Data")
autofit(T1)
Source <- c("CellCulture1", "CellCulture1", "CellCulture1", "CellCulture1",
    "CellCulture1", "CellCulture1")
Protocol1 <- c("Drug treatment", "Drug treatment", "Drug treatment",
    "Drug treatment", "Drug treatment", "Drug treatment")
Protocol2 <- c("RNA extraction", "RNA extraction", "RNA extraction",
    "RNA extraction", "RNA extraction", "RNA extraction")
Samples <- c("TechnicalRep1a", "TechnicalRep2a", "TechnicalRep3a",
    "TechnicalRep1b", "TechnicalRep2b", "TechnicalRep3b")
Protocol3 <- c("Microarray hybridization", "Microarray hybridization",
    "Microarray hybridization", "Microarray hybridization", "Microarray hybridization",
    "Microarray hybridization")
Data <- c("GEOXXXXX", "GEOXXXXX", "GEOXXXXX", "GEOXXXXX", "GEOXXXXX",
    "GEOXXXXX")
Table <- data.frame(Source, Protocol1, Protocol2, Samples, Protocol3,
    Data)

T1 <- flextable(Table)
T1 <- set_caption(T1, "Experimental study with replicates Data Records table. [Table created using the flextable package.]")
T1 <- set_header_labels(T1, Source = "Subjects", Protocol1 = "Protocol 1",
    Protocol2 = "Protocol 2", Samples = "Samples", Protocol3 = "Protocol 3",
    data = "Data")
autofit(T1)

Sample <- c("Body of water 1", "Body of water 2", "Body of water n")
geoloc <- c("location name", "location name", "location name")
geopos <- c("latitude, longitude, altitude", "latitude, longitude, altitude",
    "latitude, longitude, altitude")
protocol <- c("Measurement of surface temperature", "Measurement of surface temperature",
    "Measurement of surface temperature")
data <- c("dataFile1", "dataFile2", "dataFile3")
Table <- data.frame(Sample, geoloc, geopos, protocol, data)

T1 <- flextable(Table)
T1 <- set_caption(T1, "Observational study example Data Records table. [Table created using the flextable package.]")
T1 <- set_header_labels(T1, Sample = "Sample", geoloc = "Geographical Location",
    geopos = "Geoposition", protocol = "Protocol", data = "Data")
autofit(T1)
c1 <- c("Database URL 1", "Database URL 1", "Database URL 2")
c2 <- c("Dataset 1", "Dataset 2", "Dataset n")
c3 <- c("Number of samples in the dataset", "Number of samples in the dataset",
    "Number of samples in the dataset")
c4 <- c("Range of measurements reported in the dataset", "Range of measurements reported in the dataset",
    "Range of measurements reported in the dataset")
c5 <- c("Data assimilation procedure", "Data assimilation procedure",
    "Data assimilation procedure")
c6 <- c("Method to generate output data", "Method to generate output data",
    "Method to generate output data")
c7 <- c("dataFile1", "dataFile1", "dataFile2")
Table <- data.frame(c1, c2, c3, c4, c5, c6, c7)

T1 <- flextable(Table)
T1 <- set_caption(T1, "Observational study example Data Records table. [Table created using the flextable package.]")
T1 <- set_header_labels(T1, c1 = "Source", c2 = "Sample", c3 = "Sample Number",
    c4 = "Temporal Range", c5 = "Protocol 1", c6 = "Protocol 2",
    c7 = "Data")
autofit(T1)
```

\pagebreak

# Appendix B. Session and Version Information


```
  R version 4.2.0 (2022-04-22 ucrt)
  Platform: x86_64-w64-mingw32/x64 (64-bit)
  Running under: Windows 10 x64 (build 19042)
  
  Matrix products: default
  
  locale:
  [1] LC_COLLATE=English_United States.utf8 
  [2] LC_CTYPE=English_United States.utf8   
  [3] LC_MONETARY=English_United States.utf8
  [4] LC_NUMERIC=C                          
  [5] LC_TIME=English_United States.utf8    
  
  attached base packages:
  [1] stats     graphics  grDevices utils     datasets  methods   base     
  
  other attached packages:
   [1] EMLassemblyline_3.5.4 plotly_4.10.0         ggplot2_3.3.6        
   [4] remotes_2.4.2         english_1.2-6         flextable_0.7.3      
   [7] EML_2.0.6.1           RODBC_1.3-19          devtools_2.4.4       
  [10] usethis_2.1.6         knitcitations_1.0.12  RefManageR_1.3.0     
  [13] bibtex_0.4.2.3        htmltools_0.5.3       rmdformats_1.0.4     
  [16] yaml_2.3.5            rmdHelpers_1.2        dplyr_1.0.9          
  [19] papeR_1.0-5           xtable_1.8-4          car_3.1-0            
  [22] carData_3.0-5         kimisc_0.4            R.rsp_0.45.0         
  [25] dataMaid_1.4.1        fontawesome_0.3.0     knitr_1.39           
  [28] pander_0.6.5          rmarkdown_2.14        markdown_1.1         
  
  loaded via a namespace (and not attached):
   [1] colorspace_2.0-3  ellipsis_0.3.2    rprojroot_2.0.3   base64enc_0.1-3  
   [5] fs_1.5.2          rstudioapi_0.13   fansi_1.0.3       lubridate_1.8.0  
   [9] xml2_1.3.3        R.methodsS3_1.8.2 cachem_1.0.6      robustbase_0.95-0
  [13] pkgload_1.3.0     jsonlite_1.8.0    R.oo_1.25.0       shiny_1.7.2      
  [17] compiler_4.2.0    httr_1.4.3        fastmap_1.1.0     lazyeval_0.2.2   
  [21] cli_3.3.0         formatR_1.12      later_1.3.0       prettyunits_1.1.1
  [25] tools_4.2.0       gtable_0.3.0      glue_1.6.2        gmodels_2.18.1.1 
  [29] V8_4.2.0          Rcpp_1.0.9        jquerylib_0.1.4   vctrs_0.4.1      
  [33] gdata_2.18.0.1    xfun_0.31         stringr_1.4.0     ps_1.7.1         
  [37] mime_0.12         miniUI_0.1.1.1    lifecycle_1.0.1   gtools_3.9.3     
  [41] jqr_1.2.3         DEoptimR_1.0-11   MASS_7.3-56       scales_1.2.0     
  [45] jsonld_2.2        hms_1.1.1         promises_1.2.0.1  curl_4.3.2       
  [49] memoise_2.0.1     gridExtra_2.3     gdtools_0.2.4     sass_0.4.2       
  [53] stringi_1.7.8     highr_0.9         emld_0.5.1        zip_2.2.0        
  [57] pkgbuild_1.3.1    systemfonts_1.0.4 rlang_1.0.4       pkgconfig_2.0.3  
  [61] evaluate_0.16     purrr_0.3.4       htmlwidgets_1.5.4 processx_3.7.0   
  [65] tidyselect_1.1.2  here_1.0.1        plyr_1.8.7        magrittr_2.0.3   
  [69] bookdown_0.28     R6_2.5.1          generics_0.1.3    profvis_0.3.7    
  [73] withr_2.5.0       pillar_1.8.0      haven_2.5.0       abind_1.4-5      
  [77] tibble_3.1.7      crayon_1.5.1      uuid_1.1-0        utf8_1.2.2       
  [81] officer_0.4.3     urlchecker_1.0.1  grid_4.2.0        data.table_1.14.2
  [85] callr_3.7.1       forcats_0.5.1     digest_0.6.29     R.cache_0.16.0   
  [89] tidyr_1.2.0       httpuv_1.6.5      R.utils_2.12.0    munsell_0.5.0    
  [93] viridisLite_0.4.0 bslib_0.4.0       sessioninfo_1.2.2
```

```
  [1] "2022-08-18 12:17:07 MDT"
```

# Additional Notes (this should not be included in reports...)

## Figures

Figure images should be included in-text near the initial point of reference.

Figure captions begin with a brief title sentence summarizing the purpose of the figure as a whole, and continue with a short description of what is shown in each panel and an explanation of any symbols used. Legends must total no more than 350 words, and may contain literature references. The first sentence of the legend will be used as the title for the figure. It (the first sentence) should contain no references of any kind, including to specific figure panels, bibliographic citations or references to other figures or panels.

## Tables

Authors are encouraged to provide one or more tables that provide basic information on the main 'inputs' to the study (e.g. samples, participants, or information sources) and the main data outputs of the study; also see the additional information on providing metadata on page 6. Tables in the manuscript should generally not be used to present primary data (i.e. measurements). Tables containing primary data should be submitted to an appropriate data repository.

Authors may provide tables within text near the initial citation or as an appendix. Legends, where needed, should be included in the Word document. Generally, a Data Release Report should have fewer than ten tables, but more may be allowed when needed.

### Example Data Record Summary Tables

Here, we provide four generic 'Table 1' examples, including two experimental study examples, one observational study example, and an example for an aggregated dataset of the type that may result from a meta-analysis.

```{=html}
<template id="3dc5f312-6efd-43af-a9bd-cdb00e1084ed"><style>
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
</style><div class="tabwid"><style>.cl-f8b7a476{}.cl-f89d337a{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f89d338e{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f89d60ca{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f89d60d4{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f89de04a{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de05e{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de05f{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de068{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de072{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de07c{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de07d{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de07e{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de086{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de087{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de090{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de091{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de092{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de093{width:82.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de09a{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de09b{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de09c{width:64.5pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f89de0a4{width:58pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-f8b7a476'>
```
<caption class="Table Caption">

(\#tab:Table1)Experimental study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-f89de0a4"><p class="cl-f89d60ca"><span class="cl-f89d337a">Subjects</span></p></td><td class="cl-f89de09a"><p class="cl-f89d60ca"><span class="cl-f89d337a">Protocol 1</span></p></td><td class="cl-f89de093"><p class="cl-f89d60ca"><span class="cl-f89d337a">Protocol 2</span></p></td><td class="cl-f89de09b"><p class="cl-f89d60ca"><span class="cl-f89d337a">Protocol 3</span></p></td><td class="cl-f89de09c"><p class="cl-f89d60ca"><span class="cl-f89d337a">Protocol 4</span></p></td><td class="cl-f89de092"><p class="cl-f89d60ca"><span class="cl-f89d337a">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-f89de07c"><p class="cl-f89d60d4"><span class="cl-f89d338e">Mouse1</span></p></td><td class="cl-f89de05e"><p class="cl-f89d60d4"><span class="cl-f89d338e">Drug treatment</span></p></td><td class="cl-f89de05f"><p class="cl-f89d60d4"><span class="cl-f89d338e">Liver dissection</span></p></td><td class="cl-f89de072"><p class="cl-f89d60d4"><span class="cl-f89d338e">RNA extraction</span></p></td><td class="cl-f89de068"><p class="cl-f89d60d4"><span class="cl-f89d338e">RNA-Seq</span></p></td><td class="cl-f89de04a"><p class="cl-f89d60d4"><span class="cl-f89d338e">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f89de07c"><p class="cl-f89d60d4"><span class="cl-f89d338e">Mouse2</span></p></td><td class="cl-f89de05e"><p class="cl-f89d60d4"><span class="cl-f89d338e">Drug treatment</span></p></td><td class="cl-f89de05f"><p class="cl-f89d60d4"><span class="cl-f89d338e">Liver dissection</span></p></td><td class="cl-f89de072"><p class="cl-f89d60d4"><span class="cl-f89d338e">RNA extraction</span></p></td><td class="cl-f89de068"><p class="cl-f89d60d4"><span class="cl-f89d338e">RNA-Seq</span></p></td><td class="cl-f89de04a"><p class="cl-f89d60d4"><span class="cl-f89d338e">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f89de091"><p class="cl-f89d60d4"><span class="cl-f89d338e">Mousen</span></p></td><td class="cl-f89de07e"><p class="cl-f89d60d4"><span class="cl-f89d338e">Drug treatment</span></p></td><td class="cl-f89de086"><p class="cl-f89d60d4"><span class="cl-f89d338e">Liver dissection</span></p></td><td class="cl-f89de090"><p class="cl-f89d60d4"><span class="cl-f89d338e">RNA extraction</span></p></td><td class="cl-f89de087"><p class="cl-f89d60d4"><span class="cl-f89d338e">RNA-Seq</span></p></td><td class="cl-f89de07d"><p class="cl-f89d60d4"><span class="cl-f89d338e">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="14d6967b-b95f-43ff-b181-13c767964f90"></div>
<script>
var dest = document.getElementById("14d6967b-b95f-43ff-b181-13c767964f90");
var template = document.getElementById("3dc5f312-6efd-43af-a9bd-cdb00e1084ed");
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
<template id="bfcd03a4-80ff-4953-b45b-926596d0a806"><style>
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
</style><div class="tabwid"><style>.cl-f8ea8f94{}.cl-f8e1168a{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f8e11694{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f8e12cc4{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f8e12cce{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f8e1768e{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e17698{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176a2{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176ac{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176b6{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176c0{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176ca{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176cb{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176d4{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176de{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176df{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176e8{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176e9{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176f2{width:85.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176fc{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176fd{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176fe{width:70.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f8e176ff{width:116.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-f8ea8f94'>
```
<caption class="Table Caption">

(\#tab:Table2)Experimental study with replicates Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-f8e176fe"><p class="cl-f8e12cc4"><span class="cl-f8e1168a">Subjects</span></p></td><td class="cl-f8e176e9"><p class="cl-f8e12cc4"><span class="cl-f8e1168a">Protocol 1</span></p></td><td class="cl-f8e176fc"><p class="cl-f8e12cc4"><span class="cl-f8e1168a">Protocol 2</span></p></td><td class="cl-f8e176f2"><p class="cl-f8e12cc4"><span class="cl-f8e1168a">Samples</span></p></td><td class="cl-f8e176ff"><p class="cl-f8e12cc4"><span class="cl-f8e1168a">Protocol 3</span></p></td><td class="cl-f8e176fd"><p class="cl-f8e12cc4"><span class="cl-f8e1168a">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-f8e176ac"><p class="cl-f8e12cce"><span class="cl-f8e11694">CellCulture1</span></p></td><td class="cl-f8e17698"><p class="cl-f8e12cce"><span class="cl-f8e11694">Drug treatment</span></p></td><td class="cl-f8e176c0"><p class="cl-f8e12cce"><span class="cl-f8e11694">RNA extraction</span></p></td><td class="cl-f8e1768e"><p class="cl-f8e12cce"><span class="cl-f8e11694">TechnicalRep1a</span></p></td><td class="cl-f8e176a2"><p class="cl-f8e12cce"><span class="cl-f8e11694">Microarray hybridization</span></p></td><td class="cl-f8e176b6"><p class="cl-f8e12cce"><span class="cl-f8e11694">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f8e176ac"><p class="cl-f8e12cce"><span class="cl-f8e11694">CellCulture1</span></p></td><td class="cl-f8e17698"><p class="cl-f8e12cce"><span class="cl-f8e11694">Drug treatment</span></p></td><td class="cl-f8e176c0"><p class="cl-f8e12cce"><span class="cl-f8e11694">RNA extraction</span></p></td><td class="cl-f8e1768e"><p class="cl-f8e12cce"><span class="cl-f8e11694">TechnicalRep2a</span></p></td><td class="cl-f8e176a2"><p class="cl-f8e12cce"><span class="cl-f8e11694">Microarray hybridization</span></p></td><td class="cl-f8e176b6"><p class="cl-f8e12cce"><span class="cl-f8e11694">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f8e176ac"><p class="cl-f8e12cce"><span class="cl-f8e11694">CellCulture1</span></p></td><td class="cl-f8e17698"><p class="cl-f8e12cce"><span class="cl-f8e11694">Drug treatment</span></p></td><td class="cl-f8e176c0"><p class="cl-f8e12cce"><span class="cl-f8e11694">RNA extraction</span></p></td><td class="cl-f8e1768e"><p class="cl-f8e12cce"><span class="cl-f8e11694">TechnicalRep3a</span></p></td><td class="cl-f8e176a2"><p class="cl-f8e12cce"><span class="cl-f8e11694">Microarray hybridization</span></p></td><td class="cl-f8e176b6"><p class="cl-f8e12cce"><span class="cl-f8e11694">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f8e176ac"><p class="cl-f8e12cce"><span class="cl-f8e11694">CellCulture1</span></p></td><td class="cl-f8e17698"><p class="cl-f8e12cce"><span class="cl-f8e11694">Drug treatment</span></p></td><td class="cl-f8e176c0"><p class="cl-f8e12cce"><span class="cl-f8e11694">RNA extraction</span></p></td><td class="cl-f8e1768e"><p class="cl-f8e12cce"><span class="cl-f8e11694">TechnicalRep1b</span></p></td><td class="cl-f8e176a2"><p class="cl-f8e12cce"><span class="cl-f8e11694">Microarray hybridization</span></p></td><td class="cl-f8e176b6"><p class="cl-f8e12cce"><span class="cl-f8e11694">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f8e176ac"><p class="cl-f8e12cce"><span class="cl-f8e11694">CellCulture1</span></p></td><td class="cl-f8e17698"><p class="cl-f8e12cce"><span class="cl-f8e11694">Drug treatment</span></p></td><td class="cl-f8e176c0"><p class="cl-f8e12cce"><span class="cl-f8e11694">RNA extraction</span></p></td><td class="cl-f8e1768e"><p class="cl-f8e12cce"><span class="cl-f8e11694">TechnicalRep2b</span></p></td><td class="cl-f8e176a2"><p class="cl-f8e12cce"><span class="cl-f8e11694">Microarray hybridization</span></p></td><td class="cl-f8e176b6"><p class="cl-f8e12cce"><span class="cl-f8e11694">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f8e176df"><p class="cl-f8e12cce"><span class="cl-f8e11694">CellCulture1</span></p></td><td class="cl-f8e176d4"><p class="cl-f8e12cce"><span class="cl-f8e11694">Drug treatment</span></p></td><td class="cl-f8e176e8"><p class="cl-f8e12cce"><span class="cl-f8e11694">RNA extraction</span></p></td><td class="cl-f8e176ca"><p class="cl-f8e12cce"><span class="cl-f8e11694">TechnicalRep3b</span></p></td><td class="cl-f8e176de"><p class="cl-f8e12cce"><span class="cl-f8e11694">Microarray hybridization</span></p></td><td class="cl-f8e176cb"><p class="cl-f8e12cce"><span class="cl-f8e11694">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="9735229c-1ca8-4db2-a4d1-ac1691cc89a3"></div>
<script>
var dest = document.getElementById("9735229c-1ca8-4db2-a4d1-ac1691cc89a3");
var template = document.getElementById("bfcd03a4-80ff-4953-b45b-926596d0a806");
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
<template id="c857ec28-0d44-4cca-b999-a18d79bb37b0"><style>
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
</style><div class="tabwid"><style>.cl-f9164c7e{}.cl-f90cf2fa{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f90cf458{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f90d32a6{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f90d32b0{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f90d9a3e{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a5c{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a5d{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a66{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a67{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a70{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a71{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a7a{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a7b{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a84{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a85{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a8e{width:118pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a98{width:125.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a99{width:168.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f90d9a9a{width:83.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-f9164c7e'>
```
<caption class="Table Caption">

(\#tab:Table3)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-f90d9a9a"><p class="cl-f90d32a6"><span class="cl-f90cf2fa">Sample</span></p></td><td class="cl-f90d9a8e"><p class="cl-f90d32a6"><span class="cl-f90cf2fa">Geographical Location</span></p></td><td class="cl-f90d9a98"><p class="cl-f90d32a6"><span class="cl-f90cf2fa">Geoposition</span></p></td><td class="cl-f90d9a99"><p class="cl-f90d32a6"><span class="cl-f90cf2fa">Protocol</span></p></td><td class="cl-f90d9a85"><p class="cl-f90d32a6"><span class="cl-f90cf2fa">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-f90d9a67"><p class="cl-f90d32b0"><span class="cl-f90cf458">Body of water 1</span></p></td><td class="cl-f90d9a5c"><p class="cl-f90d32b0"><span class="cl-f90cf458">location name</span></p></td><td class="cl-f90d9a5d"><p class="cl-f90d32b0"><span class="cl-f90cf458">latitude, longitude, altitude</span></p></td><td class="cl-f90d9a66"><p class="cl-f90d32b0"><span class="cl-f90cf458">Measurement of surface temperature</span></p></td><td class="cl-f90d9a3e"><p class="cl-f90d32b0"><span class="cl-f90cf458">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f90d9a67"><p class="cl-f90d32b0"><span class="cl-f90cf458">Body of water 2</span></p></td><td class="cl-f90d9a5c"><p class="cl-f90d32b0"><span class="cl-f90cf458">location name</span></p></td><td class="cl-f90d9a5d"><p class="cl-f90d32b0"><span class="cl-f90cf458">latitude, longitude, altitude</span></p></td><td class="cl-f90d9a66"><p class="cl-f90d32b0"><span class="cl-f90cf458">Measurement of surface temperature</span></p></td><td class="cl-f90d9a3e"><p class="cl-f90d32b0"><span class="cl-f90cf458">dataFile2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f90d9a84"><p class="cl-f90d32b0"><span class="cl-f90cf458">Body of water n</span></p></td><td class="cl-f90d9a71"><p class="cl-f90d32b0"><span class="cl-f90cf458">location name</span></p></td><td class="cl-f90d9a7a"><p class="cl-f90d32b0"><span class="cl-f90cf458">latitude, longitude, altitude</span></p></td><td class="cl-f90d9a7b"><p class="cl-f90d32b0"><span class="cl-f90cf458">Measurement of surface temperature</span></p></td><td class="cl-f90d9a70"><p class="cl-f90d32b0"><span class="cl-f90cf458">dataFile3</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="6b5bcbe2-5550-49d5-aab5-fb4ff823fc61"></div>
<script>
var dest = document.getElementById("6b5bcbe2-5550-49d5-aab5-fb4ff823fc61");
var template = document.getElementById("c857ec28-0d44-4cca-b999-a18d79bb37b0");
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
<template id="aba6b764-c470-4ba0-a061-156b836c5ba2"><style>
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
</style><div class="tabwid"><style>.cl-f942fd50{}.cl-f9383bb8{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f9383bb9{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f93857c4{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f93857ce{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f938931a{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389324{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389325{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f938932e{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389338{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389339{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f938934c{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389356{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389360{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f938936a{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f938936b{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389374{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389375{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389376{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389377{width:87.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f938937e{width:59.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f938937f{width:155.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389380{width:211.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389381{width:132.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389388{width:146.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f9389389{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-f942fd50'>
```
<caption class="Table Caption">

(\#tab:Table4)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-f9389377"><p class="cl-f93857c4"><span class="cl-f9383bb8">Source</span></p></td><td class="cl-f938937e"><p class="cl-f93857c4"><span class="cl-f9383bb8">Sample</span></p></td><td class="cl-f938937f"><p class="cl-f93857c4"><span class="cl-f9383bb8">Sample Number</span></p></td><td class="cl-f9389380"><p class="cl-f93857c4"><span class="cl-f9383bb8">Temporal Range</span></p></td><td class="cl-f9389381"><p class="cl-f93857c4"><span class="cl-f9383bb8">Protocol 1</span></p></td><td class="cl-f9389388"><p class="cl-f93857c4"><span class="cl-f9383bb8">Protocol 2</span></p></td><td class="cl-f9389389"><p class="cl-f93857c4"><span class="cl-f9383bb8">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-f9389325"><p class="cl-f93857ce"><span class="cl-f9383bb9">Database URL 1</span></p></td><td class="cl-f938931a"><p class="cl-f93857ce"><span class="cl-f9383bb9">Dataset 1</span></p></td><td class="cl-f9389324"><p class="cl-f93857ce"><span class="cl-f9383bb9">Number of samples in the dataset</span></p></td><td class="cl-f9389339"><p class="cl-f93857ce"><span class="cl-f9383bb9">Range of measurements reported in the dataset</span></p></td><td class="cl-f938934c"><p class="cl-f93857ce"><span class="cl-f9383bb9">Data assimilation procedure</span></p></td><td class="cl-f938932e"><p class="cl-f93857ce"><span class="cl-f9383bb9">Method to generate output data</span></p></td><td class="cl-f9389338"><p class="cl-f93857ce"><span class="cl-f9383bb9">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f9389325"><p class="cl-f93857ce"><span class="cl-f9383bb9">Database URL 1</span></p></td><td class="cl-f938931a"><p class="cl-f93857ce"><span class="cl-f9383bb9">Dataset 2</span></p></td><td class="cl-f9389324"><p class="cl-f93857ce"><span class="cl-f9383bb9">Number of samples in the dataset</span></p></td><td class="cl-f9389339"><p class="cl-f93857ce"><span class="cl-f9383bb9">Range of measurements reported in the dataset</span></p></td><td class="cl-f938934c"><p class="cl-f93857ce"><span class="cl-f9383bb9">Data assimilation procedure</span></p></td><td class="cl-f938932e"><p class="cl-f93857ce"><span class="cl-f9383bb9">Method to generate output data</span></p></td><td class="cl-f9389338"><p class="cl-f93857ce"><span class="cl-f9383bb9">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f938936a"><p class="cl-f93857ce"><span class="cl-f9383bb9">Database URL 2</span></p></td><td class="cl-f938936b"><p class="cl-f93857ce"><span class="cl-f9383bb9">Dataset n</span></p></td><td class="cl-f9389356"><p class="cl-f93857ce"><span class="cl-f9383bb9">Number of samples in the dataset</span></p></td><td class="cl-f9389360"><p class="cl-f93857ce"><span class="cl-f9383bb9">Range of measurements reported in the dataset</span></p></td><td class="cl-f9389375"><p class="cl-f93857ce"><span class="cl-f9383bb9">Data assimilation procedure</span></p></td><td class="cl-f9389376"><p class="cl-f93857ce"><span class="cl-f9383bb9">Method to generate output data</span></p></td><td class="cl-f9389374"><p class="cl-f93857ce"><span class="cl-f9383bb9">dataFile2</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="761d396e-eb5f-4cac-b2ec-a6ea24282020"></div>
<script>
var dest = document.getElementById("761d396e-eb5f-4cac-b2ec-a6ea24282020");
var template = document.getElementById("aba6b764-c470-4ba0-a061-156b836c5ba2");
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
