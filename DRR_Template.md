---
### this is a YAML header that helps with formating the DRR. You do not need to edit anything in the YAML header.
date: "16 August, 2022"
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
### This is the end of the YAML header.
---


# DRR TITLE 
## Data Release Report 1111111



### Jane Doe

NPS Inventory and Monitory Division

1201 Oakrdige Dr, Suite 150

Fort Collins, Colorado


### John Doe

Managed Business Solutions (MBS), a Sealaska Company

Contractor to the National Park Service

Natural Resource Stewardship and Science Directorate

1201 Oakridge Dr, Suite 150

Fort Collins, Colorado

### 16 August, 2022 <!-- publication date - defaults to current system date -->

<h4 class="text-center">Abstract</h4> <!-- abstract heading - don't edit -->

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

This DRR describes the data package Dataset 1 FULL TITLE which contains a metadata file and 2 data files. These data were compiled by the National Park Service Biological Resources Division and are available at https://doi.org/10.57830/12342567. The files in the data package are:

**my_data.csv -** This is a short description of the corresponding data file (a good guideline is 10 words or less).

**my_data2.csv -** This is a short (perhaps 10 words) description of the 2nd data file.

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

The data within the data records listed above have been reviewed by staff in the NPS Inventory and Monitoring Division to ensure accuracy, completeness, and consistency with documented data quality standards, as well as for usability and reproducibility. The *Dataset 1 FULL TITLE* is suitable for its intended use as of the date of processing (2022-08-16).

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
#The title of your DRR (all upper case is enforced):
title<-"DRR TITLE"

#Optional and should only be included if publishing to the semi-official DRR series. Contact Joe if you are. If not, leave as NULL
reportNumber<-1111111

# This should match the Data Store Reference ID for this DRR. Eventually we should be able to pull this directly from the data package metadata.
DRR_DSRefID<-7654321

#Can eventually pull authors from data package metadata, but that assumes data package authors and DRR authors are the same.... 

#the number of authors for the DRR:
AuthorNumb<-2

#DRR Author #1 (which may differ from data pacakge authors!)
AuthorName1<-"Jane Doe"

AuthorAffiliation1<-"NPS Inventory and Monitory Division\n
1201 Oakrdige Dr, Suite 150\n
Fort Collins, Colorado"

#DRR Author #2
AuthorName2<-"John Doe"
AuthorAffiliation2<-"Managed Business Solutions (MBS), a Sealaska Company\n
Contractor to the National Park Service\n
Natural Resource Stewardship and Science Directorate\n
1201 Oakridge Dr, Suite 150\n
Fort Collins, Colorado"

#DRR Author #3... and so on. make sure the number of authors is equal to the value set for AuthorNumb
#AuthorName3<-"Author Name 3"
#AuthorAffiliation3<-"Author Affilation 3"

DRRabstract<-"Abstract Should go here. Multiple Lines are okay; it'll format correctly. Pay careful attendtion to non-standard characters, line breaks, carriage returns, and curly-quotes. You may find it useful to write the abstract in NotePad++ or some other text editor and not a word processor (such as Microsoft Word).\n\n
The Abstract should succinctly describe the study, the assay(s) performed, the resulting data, and their reuse potential, but should not make any claims regarding new scientific findings. No references are allowed in this section."
    
# DataStore reference ID for the data package associated with this report. You must have at least one data package.Eventually, we will automate importing much of this information from metadata and include the ability to describe multiple data packages in a single DRR.
dataPackage1RefID<-12342567

# Must match title in data store.
dataPackage1Title<-"Dataset 1 FULL TITLE"

#Must match descriptions in the data package metadata
dataPackage1Description<-"SHORT TITLE FOR DATASET 1"

#generates your data package DOI based on the data package DataStore reference ID. This is different from the DRR DOI!
dataPackage1DOI<-paste0("https://doi.org/10.57830/", dataPackage1RefID)

#The number of data files in the data package described by the DRR. Exclude metadata files! For in this example the data package includes 3 files at upload: one metadata file and two data files.
dataPackage1_filenumb<-2

# The file name for the first data file in the data package. Each data package must include at least one data file.
dataPackage1_datafile1_name<-"my_data.csv"

dataPackage1_datafile1_descript<-"This is a short description of the corresponding data file (a good guideline is 10 words or less)."

# Should match file name in data store/metadata.
dataPackage1_datafile2_name<-"my_data2.csv"

dataPackage1_datafile2_descript<-"This is a short (perhaps 10 words) description of the 2nd data file."

#Add additional file names and descriptions following the format above.

# Write parameters to file for consistent reuse across report and data packages
save(title, reportNumber, DRR_DSRefID, AuthorNumb, AuthorName1, AuthorAffiliation1, AuthorName2, AuthorAffiliation2, DRRabstract, dataPackage1RefID, dataPackage1Title, dataPackage1Description, dataPackage1DOI, dataPackage1_filenumb, dataPackage1_datafile1_name, dataPackage1_datafile1_descript, dataPackage1_datafile2_name, dataPackage1_datafile2_descript,  file=here::here("temp", "reportParameters.Rdata"))

date<-format(Sys.time(), '%d %B, %Y')
title<-toupper(title)
cat("#", title, "\n")
if(!is.null(reportNumber)){
  subtitle<-paste0("Data Release Report ", reportNumber)
  cat("##", subtitle)
  }



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


## General Utility Functions

source(here::here("common", "SharedFunctions.R"))

#Create Abstract File from YAML header. You may need to update this if you change the data packaging folder (or add additional ones)
cat(DRRabstract,file="temp\\abstract.txt",sep="\n",append=FALSE)

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

#formatting template:
template<-"### %s

%s


"
names<-NULL
address<-NULL

#turn author data into a dataframe
for(i in 1:AuthorNumb){
  names<-append(names, get(paste0("AuthorName", i)))
  address<-append(address, get(paste0("AuthorAffiliation", i)))
}
contact<-data.frame(names, address)

#add author data to the template & write to html
for(i in 1:AuthorNumb){
  curr<-contact[i,]
  cat(sprintf(template, curr$names, curr$address))
}
  
# Load datasets for use (example commented out below)
# nccnbirds::LoadLandbirds(here::here("data", "final"), cache = FALSE)
include_graphics("figures/ProcessingWorkflow.png")

#formatting template:
template<-"**%s -** %s

"
names<-NULL
descript<-NULL

#turn author data into a dataframe
for(i in 1:dataPackage1_filenumb){
  names<-append(names, get(paste0("dataPackage1_datafile", i, "_name")))
  descript<-append(descript, get(paste0("dataPackage1_datafile", i,"_descript")))
}
filelist<-data.frame(names, descript)

#add author data to the template & write to html
for(i in 1:dataPackage1_filenumb){
  curr<-filelist[i,]
  cat(sprintf(template, curr$names, curr$descript))
}
  
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
  [19] texreg_1.38.6         papeR_1.0-5           xtable_1.8-4         
  [22] car_3.1-0             carData_3.0-5         kimisc_0.4           
  [25] R.rsp_0.45.0          dataMaid_1.4.1        knitr_1.39           
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
  [61] evaluate_0.16     purrr_0.3.4       htmlwidgets_1.5.4 tidyselect_1.1.2 
  [65] processx_3.7.0    here_1.0.1        plyr_1.8.7        magrittr_2.0.3   
  [69] bookdown_0.28     R6_2.5.1          generics_0.1.3    profvis_0.3.7    
  [73] withr_2.5.0       pillar_1.8.0      haven_2.5.0       abind_1.4-5      
  [77] tibble_3.1.7      crayon_1.5.1      uuid_1.1-0        utf8_1.2.2       
  [81] officer_0.4.3     urlchecker_1.0.1  grid_4.2.0        data.table_1.14.2
  [85] callr_3.7.1       forcats_0.5.1     digest_0.6.29     R.cache_0.16.0   
  [89] tidyr_1.2.0       httpuv_1.6.5      R.utils_2.12.0    munsell_0.5.0    
  [93] viridisLite_0.4.0 bslib_0.4.0       sessioninfo_1.2.2
```

```
  [1] "2022-08-16 12:27:43 MDT"
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
<template id="e93e5122-3508-4a35-a9b9-d29e4ea1e113"><style>
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
</style><div class="tabwid"><style>.cl-1f122ffc{}.cl-1eea1238{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-1eea124c{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-1eea499c{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-1eea49b0{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-1eeab0c6{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab0da{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab0db{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab0e4{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab0e5{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab0ee{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab0f8{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab0f9{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab102{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab103{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab104{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab10c{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab10d{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab116{width:82.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab117{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab120{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab121{width:64.5pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1eeab12a{width:58pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-1f122ffc'>
```
<caption class="Table Caption">

(\#tab:Table1)Experimental study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-1eeab12a"><p class="cl-1eea499c"><span class="cl-1eea1238">Subjects</span></p></td><td class="cl-1eeab117"><p class="cl-1eea499c"><span class="cl-1eea1238">Protocol 1</span></p></td><td class="cl-1eeab116"><p class="cl-1eea499c"><span class="cl-1eea1238">Protocol 2</span></p></td><td class="cl-1eeab120"><p class="cl-1eea499c"><span class="cl-1eea1238">Protocol 3</span></p></td><td class="cl-1eeab121"><p class="cl-1eea499c"><span class="cl-1eea1238">Protocol 4</span></p></td><td class="cl-1eeab10d"><p class="cl-1eea499c"><span class="cl-1eea1238">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-1eeab0ee"><p class="cl-1eea49b0"><span class="cl-1eea124c">Mouse1</span></p></td><td class="cl-1eeab0da"><p class="cl-1eea49b0"><span class="cl-1eea124c">Drug treatment</span></p></td><td class="cl-1eeab0db"><p class="cl-1eea49b0"><span class="cl-1eea124c">Liver dissection</span></p></td><td class="cl-1eeab0e5"><p class="cl-1eea49b0"><span class="cl-1eea124c">RNA extraction</span></p></td><td class="cl-1eeab0e4"><p class="cl-1eea49b0"><span class="cl-1eea124c">RNA-Seq</span></p></td><td class="cl-1eeab0c6"><p class="cl-1eea49b0"><span class="cl-1eea124c">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1eeab0ee"><p class="cl-1eea49b0"><span class="cl-1eea124c">Mouse2</span></p></td><td class="cl-1eeab0da"><p class="cl-1eea49b0"><span class="cl-1eea124c">Drug treatment</span></p></td><td class="cl-1eeab0db"><p class="cl-1eea49b0"><span class="cl-1eea124c">Liver dissection</span></p></td><td class="cl-1eeab0e5"><p class="cl-1eea49b0"><span class="cl-1eea124c">RNA extraction</span></p></td><td class="cl-1eeab0e4"><p class="cl-1eea49b0"><span class="cl-1eea124c">RNA-Seq</span></p></td><td class="cl-1eeab0c6"><p class="cl-1eea49b0"><span class="cl-1eea124c">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1eeab10c"><p class="cl-1eea49b0"><span class="cl-1eea124c">Mousen</span></p></td><td class="cl-1eeab0f9"><p class="cl-1eea49b0"><span class="cl-1eea124c">Drug treatment</span></p></td><td class="cl-1eeab102"><p class="cl-1eea49b0"><span class="cl-1eea124c">Liver dissection</span></p></td><td class="cl-1eeab104"><p class="cl-1eea49b0"><span class="cl-1eea124c">RNA extraction</span></p></td><td class="cl-1eeab103"><p class="cl-1eea49b0"><span class="cl-1eea124c">RNA-Seq</span></p></td><td class="cl-1eeab0f8"><p class="cl-1eea49b0"><span class="cl-1eea124c">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="3b0dd94b-b9b0-4b14-b8fd-c0e1b4797152"></div>
<script>
var dest = document.getElementById("3b0dd94b-b9b0-4b14-b8fd-c0e1b4797152");
var template = document.getElementById("e93e5122-3508-4a35-a9b9-d29e4ea1e113");
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
<template id="ecc53120-86c7-4423-8ebe-4b07d398b225"><style>
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
</style><div class="tabwid"><style>.cl-1f4ef766{}.cl-1f413eb4{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-1f413ec8{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-1f4160e2{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-1f4160f6{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-1f41beac{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41beb6{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bec0{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bec1{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bec2{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41beca{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bed4{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bede{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bedf{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bee8{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bee9{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bef2{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bef3{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41befc{width:85.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bf06{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bf07{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bf10{width:70.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f41bf11{width:116.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-1f4ef766'>
```
<caption class="Table Caption">

(\#tab:Table2)Experimental study with replicates Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-1f41bf10"><p class="cl-1f4160e2"><span class="cl-1f413eb4">Subjects</span></p></td><td class="cl-1f41bef3"><p class="cl-1f4160e2"><span class="cl-1f413eb4">Protocol 1</span></p></td><td class="cl-1f41bf06"><p class="cl-1f4160e2"><span class="cl-1f413eb4">Protocol 2</span></p></td><td class="cl-1f41befc"><p class="cl-1f4160e2"><span class="cl-1f413eb4">Samples</span></p></td><td class="cl-1f41bf11"><p class="cl-1f4160e2"><span class="cl-1f413eb4">Protocol 3</span></p></td><td class="cl-1f41bf07"><p class="cl-1f4160e2"><span class="cl-1f413eb4">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-1f41bec1"><p class="cl-1f4160f6"><span class="cl-1f413ec8">CellCulture1</span></p></td><td class="cl-1f41beb6"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Drug treatment</span></p></td><td class="cl-1f41beca"><p class="cl-1f4160f6"><span class="cl-1f413ec8">RNA extraction</span></p></td><td class="cl-1f41beac"><p class="cl-1f4160f6"><span class="cl-1f413ec8">TechnicalRep1a</span></p></td><td class="cl-1f41bec0"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Microarray hybridization</span></p></td><td class="cl-1f41bec2"><p class="cl-1f4160f6"><span class="cl-1f413ec8">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1f41bec1"><p class="cl-1f4160f6"><span class="cl-1f413ec8">CellCulture1</span></p></td><td class="cl-1f41beb6"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Drug treatment</span></p></td><td class="cl-1f41beca"><p class="cl-1f4160f6"><span class="cl-1f413ec8">RNA extraction</span></p></td><td class="cl-1f41beac"><p class="cl-1f4160f6"><span class="cl-1f413ec8">TechnicalRep2a</span></p></td><td class="cl-1f41bec0"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Microarray hybridization</span></p></td><td class="cl-1f41bec2"><p class="cl-1f4160f6"><span class="cl-1f413ec8">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1f41bec1"><p class="cl-1f4160f6"><span class="cl-1f413ec8">CellCulture1</span></p></td><td class="cl-1f41beb6"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Drug treatment</span></p></td><td class="cl-1f41beca"><p class="cl-1f4160f6"><span class="cl-1f413ec8">RNA extraction</span></p></td><td class="cl-1f41beac"><p class="cl-1f4160f6"><span class="cl-1f413ec8">TechnicalRep3a</span></p></td><td class="cl-1f41bec0"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Microarray hybridization</span></p></td><td class="cl-1f41bec2"><p class="cl-1f4160f6"><span class="cl-1f413ec8">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1f41bec1"><p class="cl-1f4160f6"><span class="cl-1f413ec8">CellCulture1</span></p></td><td class="cl-1f41beb6"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Drug treatment</span></p></td><td class="cl-1f41beca"><p class="cl-1f4160f6"><span class="cl-1f413ec8">RNA extraction</span></p></td><td class="cl-1f41beac"><p class="cl-1f4160f6"><span class="cl-1f413ec8">TechnicalRep1b</span></p></td><td class="cl-1f41bec0"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Microarray hybridization</span></p></td><td class="cl-1f41bec2"><p class="cl-1f4160f6"><span class="cl-1f413ec8">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1f41bec1"><p class="cl-1f4160f6"><span class="cl-1f413ec8">CellCulture1</span></p></td><td class="cl-1f41beb6"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Drug treatment</span></p></td><td class="cl-1f41beca"><p class="cl-1f4160f6"><span class="cl-1f413ec8">RNA extraction</span></p></td><td class="cl-1f41beac"><p class="cl-1f4160f6"><span class="cl-1f413ec8">TechnicalRep2b</span></p></td><td class="cl-1f41bec0"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Microarray hybridization</span></p></td><td class="cl-1f41bec2"><p class="cl-1f4160f6"><span class="cl-1f413ec8">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1f41bee9"><p class="cl-1f4160f6"><span class="cl-1f413ec8">CellCulture1</span></p></td><td class="cl-1f41bedf"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Drug treatment</span></p></td><td class="cl-1f41bef2"><p class="cl-1f4160f6"><span class="cl-1f413ec8">RNA extraction</span></p></td><td class="cl-1f41bed4"><p class="cl-1f4160f6"><span class="cl-1f413ec8">TechnicalRep3b</span></p></td><td class="cl-1f41bee8"><p class="cl-1f4160f6"><span class="cl-1f413ec8">Microarray hybridization</span></p></td><td class="cl-1f41bede"><p class="cl-1f4160f6"><span class="cl-1f413ec8">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="7d626c1b-df47-4752-a236-ac5490e83a19"></div>
<script>
var dest = document.getElementById("7d626c1b-df47-4752-a236-ac5490e83a19");
var template = document.getElementById("ecc53120-86c7-4423-8ebe-4b07d398b225");
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
<template id="813684b4-0b4e-481b-b506-9bdf8807d907"><style>
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
</style><div class="tabwid"><style>.cl-1f88faa6{}.cl-1f794016{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-1f79402a{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-1f7960aa{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-1f7960be{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-1f79b028{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b032{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b03c{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b03d{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b046{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b047{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b050{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b051{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b05a{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b064{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b065{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b06e{width:118pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b06f{width:125.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b070{width:168.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1f79b078{width:83.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-1f88faa6'>
```
<caption class="Table Caption">

(\#tab:Table3)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-1f79b078"><p class="cl-1f7960aa"><span class="cl-1f794016">Sample</span></p></td><td class="cl-1f79b06e"><p class="cl-1f7960aa"><span class="cl-1f794016">Geographical Location</span></p></td><td class="cl-1f79b06f"><p class="cl-1f7960aa"><span class="cl-1f794016">Geoposition</span></p></td><td class="cl-1f79b070"><p class="cl-1f7960aa"><span class="cl-1f794016">Protocol</span></p></td><td class="cl-1f79b065"><p class="cl-1f7960aa"><span class="cl-1f794016">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-1f79b046"><p class="cl-1f7960be"><span class="cl-1f79402a">Body of water 1</span></p></td><td class="cl-1f79b032"><p class="cl-1f7960be"><span class="cl-1f79402a">location name</span></p></td><td class="cl-1f79b03c"><p class="cl-1f7960be"><span class="cl-1f79402a">latitude, longitude, altitude</span></p></td><td class="cl-1f79b03d"><p class="cl-1f7960be"><span class="cl-1f79402a">Measurement of surface temperature</span></p></td><td class="cl-1f79b028"><p class="cl-1f7960be"><span class="cl-1f79402a">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1f79b046"><p class="cl-1f7960be"><span class="cl-1f79402a">Body of water 2</span></p></td><td class="cl-1f79b032"><p class="cl-1f7960be"><span class="cl-1f79402a">location name</span></p></td><td class="cl-1f79b03c"><p class="cl-1f7960be"><span class="cl-1f79402a">latitude, longitude, altitude</span></p></td><td class="cl-1f79b03d"><p class="cl-1f7960be"><span class="cl-1f79402a">Measurement of surface temperature</span></p></td><td class="cl-1f79b028"><p class="cl-1f7960be"><span class="cl-1f79402a">dataFile2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1f79b064"><p class="cl-1f7960be"><span class="cl-1f79402a">Body of water n</span></p></td><td class="cl-1f79b050"><p class="cl-1f7960be"><span class="cl-1f79402a">location name</span></p></td><td class="cl-1f79b051"><p class="cl-1f7960be"><span class="cl-1f79402a">latitude, longitude, altitude</span></p></td><td class="cl-1f79b05a"><p class="cl-1f7960be"><span class="cl-1f79402a">Measurement of surface temperature</span></p></td><td class="cl-1f79b047"><p class="cl-1f7960be"><span class="cl-1f79402a">dataFile3</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="9b851922-fb35-499c-bf25-38dd8a3e2c6f"></div>
<script>
var dest = document.getElementById("9b851922-fb35-499c-bf25-38dd8a3e2c6f");
var template = document.getElementById("813684b4-0b4e-481b-b506-9bdf8807d907");
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
<template id="fec52131-42d2-48d5-9812-77c4b48cf393"><style>
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
</style><div class="tabwid"><style>.cl-1fc2c2d6{}.cl-1fb3df5a{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-1fb3df6e{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-1fb400e8{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-1fb400f2{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-1fb4607e{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb46092{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb46093{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb4609c{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb4609d{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460a6{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460a7{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460b0{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460b1{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460ba{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460bb{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460bc{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460bd{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460c4{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460c5{width:87.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460ce{width:59.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460cf{width:155.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460d8{width:211.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460d9{width:132.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460e2{width:146.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-1fb460e3{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-1fc2c2d6'>
```
<caption class="Table Caption">

(\#tab:Table4)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-1fb460c5"><p class="cl-1fb400e8"><span class="cl-1fb3df5a">Source</span></p></td><td class="cl-1fb460ce"><p class="cl-1fb400e8"><span class="cl-1fb3df5a">Sample</span></p></td><td class="cl-1fb460cf"><p class="cl-1fb400e8"><span class="cl-1fb3df5a">Sample Number</span></p></td><td class="cl-1fb460d8"><p class="cl-1fb400e8"><span class="cl-1fb3df5a">Temporal Range</span></p></td><td class="cl-1fb460d9"><p class="cl-1fb400e8"><span class="cl-1fb3df5a">Protocol 1</span></p></td><td class="cl-1fb460e2"><p class="cl-1fb400e8"><span class="cl-1fb3df5a">Protocol 2</span></p></td><td class="cl-1fb460e3"><p class="cl-1fb400e8"><span class="cl-1fb3df5a">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-1fb46093"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Database URL 1</span></p></td><td class="cl-1fb4607e"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Dataset 1</span></p></td><td class="cl-1fb46092"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Number of samples in the dataset</span></p></td><td class="cl-1fb460a6"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Range of measurements reported in the dataset</span></p></td><td class="cl-1fb460a7"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Data assimilation procedure</span></p></td><td class="cl-1fb4609c"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Method to generate output data</span></p></td><td class="cl-1fb4609d"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1fb46093"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Database URL 1</span></p></td><td class="cl-1fb4607e"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Dataset 2</span></p></td><td class="cl-1fb46092"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Number of samples in the dataset</span></p></td><td class="cl-1fb460a6"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Range of measurements reported in the dataset</span></p></td><td class="cl-1fb460a7"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Data assimilation procedure</span></p></td><td class="cl-1fb4609c"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Method to generate output data</span></p></td><td class="cl-1fb4609d"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-1fb460ba"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Database URL 2</span></p></td><td class="cl-1fb460bb"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Dataset n</span></p></td><td class="cl-1fb460b0"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Number of samples in the dataset</span></p></td><td class="cl-1fb460b1"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Range of measurements reported in the dataset</span></p></td><td class="cl-1fb460bd"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Data assimilation procedure</span></p></td><td class="cl-1fb460c4"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">Method to generate output data</span></p></td><td class="cl-1fb460bc"><p class="cl-1fb400f2"><span class="cl-1fb3df6e">dataFile2</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="c7a727b5-89a9-44c1-9eee-dbf5d125d160"></div>
<script>
var dest = document.getElementById("c7a727b5-89a9-44c1-9eee-dbf5d125d160");
var template = document.getElementById("fec52131-42d2-48d5-9812-77c4b48cf393");
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

