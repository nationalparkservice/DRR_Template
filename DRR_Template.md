---
# YAML header: do not edit
date: "31 August, 2022"
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

#### 31 August, 2022 <!-- publication date - defaults to current system date -->

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

The data within the data records listed above have been reviewed by staff in the NPS Inventory and Monitoring Division to ensure accuracy, completeness, and consistency with documented data quality standards, as well as for usability and reproducibility. The *Data Package Title* is suitable for its intended use as of the date of processing (2022-08-31).

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


```r
# The title of your DRR. Should all DRR start with 'Data
# Release Report:'? Should we enforce titles specifically
# referencing the data package(s) they the report is about?
title <- "DRR Title"

# Optional and should only be included if publishing to the
# semi-official DRR series. Contact Joe if you are. If not,
# leave as NULL
reportNumber <- NULL
# This should match the Data Store Reference ID for this
# DRR. Eventually we should be able to pull this directly
# from the data package metadata.
DRR_DSRefID <- 7654321

# Can eventually pull authors from data package metadata,
# but that assumes data package authors and DRR authors are
# the same so there will always need to be an option for
# manually entering author info.

# list the authors.
authorNames <- c("Jane Doe", "John Doe")

# List author affiliations. The order of author
# affiliations must match the order of the authors in
# AuthorNames. Note that the entirety of each affiliation
# is enclosed in quotations. Line breaks are indicated with
# the tag <br>. Do not worry about indentation or word
# wrapping.
authorAffiliations <- c("NPS Inventory and Monitory Division<br>
1201 Oakridge Dr, Suite 150<br>
Fort Collins, Colorado",
    "Managed Business Solutions (MBS), a Sealaska Company<br>
Contractor to the National Park Service<br>
Natural Resource Stewardship and Science Directorate<br>
1201 Oakridge Dr, Suite 150<br>
Fort Collins, Colorado")

# List the ORCID iDs for each author in the format
# 'xxxx-xxxx-xxxx-xxxx'. If an author does not have an
# ORCID iD, specify NA (no quotes). For more information on
# ORCID iDs and to register an ORCID iD, see
# https://www.orcid.org. The order of the ORCID iDs must
# match the order of authors in AuthorNames.In this
# example, Jane Doe has an ORCID iD but John Doe does not.
authorORCID <- c("0000-1111-2222-3333", NA)

DRRabstract <- "Abstract Should go here. Multiple Lines are okay; it'll format correctly. Pay careful attendtion to non-standard characters, line breaks, carriage returns, and curly-quotes. You may find it useful to write the abstract in NotePad++ or some other text editor and not a word processor (such as Microsoft Word).\n\n

The abstract should succinctly describe the study, the assay(s) performed, the resulting data, and their reuse potential, but should not make any claims regarding new scientific findings. No references are allowed in this section."

# DataStore reference ID for the data package associated
# with this report. You must have at least one data
# package.Eventually, we will automate importing much of
# this information from metadata.
dataPackageRefID <- c(12342567)

# Must match title in DataStore and metadata
dataPackageTitle <- "Data Package Title"

# Must match descriptions in the data package metadata
dataPackageDescription <- "Short title for data package1"

# generates your data package DOI based on the data package
# DataStore reference ID. This is different from the DRR
# DOI! No need to edit this.
dataPackageDOI <- paste0("https://doi.org/10.57830/", dataPackageRefID)

# list the file names in your data package. Do NOT include
# metadata files.
dataPackage_fileNames <- c("my_data.csv", "my_data2.csv")

# list the approximate size of each data file. Make sure
# the order corresponds to the order of of the file names
# in dataPackage_fileNames
dataPackage_fileSizes <- c("0.8 MB", "10 GB")

# list a short, one-line description of each data file.
# Descriptions must be in the same order as the filenames.
dataPackage_fileDescript <- c("This is a short description of my_data.csv (a good guideline is 10 words or less).",
    "This is a short description of my_data2.csv.")

# Write parameters to file for consistent reuse across
# report and data packages
save(title, reportNumber, DRR_DSRefID, authorNames, authorAffiliations,
    authorORCID, DRRabstract, dataPackageRefID, dataPackageTitle,
    dataPackageDescription, dataPackageDOI, dataPackage_fileNames,
    dataPackage_fileSizes, dataPackage_fileDescript, file = here::here("output",
        "temp", "reportParameters.Rdata"))

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
date <- format(Sys.time(), "%d %B, %Y")
cat("#", title, "\n")
if (!is.null(reportNumber)) {
    subtitle <- paste0("Data Release Report ", reportNumber)
    cat("###", subtitle)
}
contact <- data.frame(authorNames, authorAffiliations, authorORCID)

for (i in 1:(length(authorNames)/2)) {
    curr <- contact[i, ]
    cat("####", curr$authorNames, " ")
    if (is.na(curr$authorORCID)) {
        cat("\n")
    }
    if (!is.na(curr$authorORCID)) {
        # Consider re-write to use the actual downloaded
        # icon and not fontawesome.For some reason fill
        # isn't rendering in chrome (but does in edge).
        # Maybe move fill to CSS?
        orc <- fontawesome::fa("orcid", fill = "#A6CE39")
        orc <- gsub(";\">", ";\"> <xmlns:xlink=\"http://www.w3.org/1999/xlink\"><a xlink:href= \"dummyhtml\">",
            orc)
        orc <- gsub("dummyhtml", paste0("https://orcid.org/",
            curr$authorORCID), orc)
        orc <- gsub("</svg>", "</a></svg>", orc)
        cat({
            {
                orc
            }
        })
    }
    cat("\n")
    cat(curr$authorAffiliations, "\n\n")
}
for (i in ((length(authorNames)/2) + 1):(length(authorNames))) {
    curr <- contact[i, ]
    cat("####", curr$authorNames, " ")
    if (is.na(curr$authorORCID)) {
        cat("\n")
    }
    if (!is.na(curr$authorORCID)) {
        # Consider re-write to use the actual downloaded
        # icon and not fontawesome.For some reason fill
        # isn't rendering in chrome (but does in edge).
        # Maybe move fill to CSS?
        orc <- fontawesome::fa("orcid", fill = "#A6CE39")
        orc <- gsub(";\">", ";\"> <xmlns:xlink=\"http://www.w3.org/1999/xlink\"><a xlink:href= \"dummyhtml\">",
            orc)
        orc <- gsub("dummyhtml", paste0("https://orcid.org/",
            curr$authorORCID), orc)
        orc <- gsub("</svg>", "</a></svg>", orc)
        cat({
            {
                orc
            }
        })
    }
    cat("\n")
    cat(curr$authorAffiliations, "\n\n")
}
# Load datasets for use (example commented out below)
# nccnbirds::LoadLandbirds(here::here('data', 'final'),
# cache = FALSE)
filelist <- data.frame(dataPackage_fileNames, dataPackage_fileSizes,
    dataPackage_fileDescript)

knitr::kable(filelist, caption = paste0("**", dataPackageTitle,
    ": List of data files**"), col.names = c("File Name", "Size",
    "Description"), format = "pandoc")
# formatting template:
template <- "**%s -** %s - %s

"
# made dataframe describing datapackage contents:
filelist <- data.frame(dataPackage_fileNames, dataPackage_fileSizes,
    dataPackage_fileDescript)

# add data file info to the template & write to html:
for (i in seq_along(dataPackage_fileNames)) {
    curr <- filelist[i, ]
    cat(sprintf(template, curr$dataPackage_fileNames, curr$dataPackage_fileSizes,
        curr$dataPackage_fileDescript))
}
flags <- c("A", "AE", "R")
def <- c("Accepted", "Accepted, estimated", "Rejected")
app <- rep("columns endining \"_flag\"", 3)
data_flags <- data.frame(flags, def, app)

knitr::kable(data_flags, caption = "**Description of data quality flags**",
    col.names = c("Flag", "Definition", "Useage"), format = "pandoc")
include_graphics("output/temp/example_DRR/figures/ProcessingWorkflow.png")

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
  [28] pander_0.6.5          rmarkdown_2.15        markdown_1.1         
  
  loaded via a namespace (and not attached):
   [1] colorspace_2.0-3  ellipsis_0.3.2    rprojroot_2.0.3   base64enc_0.1-3  
   [5] fs_1.5.2          rstudioapi_0.13   fansi_1.0.3       lubridate_1.8.0  
   [9] xml2_1.3.3        R.methodsS3_1.8.2 cachem_1.0.6      robustbase_0.95-0
  [13] pkgload_1.3.0     jsonlite_1.8.0    R.oo_1.25.0       shiny_1.7.2      
  [17] compiler_4.2.0    httr_1.4.3        fastmap_1.1.0     lazyeval_0.2.2   
  [21] cli_3.3.0         formatR_1.12      later_1.3.0       prettyunits_1.1.1
  [25] tools_4.2.0       gtable_0.3.0      glue_1.6.2        gmodels_2.18.1.1 
  [29] V8_4.2.0          Rcpp_1.0.9        jquerylib_0.1.4   vctrs_0.4.1      
  [33] gdata_2.18.0.1    xfun_0.31         stringr_1.4.1     ps_1.7.1         
  [37] mime_0.12         miniUI_0.1.1.1    lifecycle_1.0.1   gtools_3.9.3     
  [41] jqr_1.2.3         DEoptimR_1.0-11   MASS_7.3-56       scales_1.2.0     
  [45] jsonld_2.2        hms_1.1.1         promises_1.2.0.1  curl_4.3.2       
  [49] memoise_2.0.1     gridExtra_2.3     gdtools_0.2.4     sass_0.4.2       
  [53] stringi_1.7.8     highr_0.9         emld_0.5.1        zip_2.2.0        
  [57] pkgbuild_1.3.1    systemfonts_1.0.4 rlang_1.0.4       pkgconfig_2.0.3  
  [61] evaluate_0.16     purrr_0.3.4       htmlwidgets_1.5.4 processx_3.7.0   
  [65] tidyselect_1.1.2  here_1.0.1        plyr_1.8.7        magrittr_2.0.3   
  [69] bookdown_0.28     R6_2.5.1          generics_0.1.3    profvis_0.3.7    
  [73] withr_2.5.0       pillar_1.8.1      haven_2.5.0       abind_1.4-5      
  [77] tibble_3.1.7      crayon_1.5.1      uuid_1.1-0        utf8_1.2.2       
  [81] officer_0.4.3     urlchecker_1.0.1  grid_4.2.0        data.table_1.14.2
  [85] callr_3.7.1       forcats_0.5.1     digest_0.6.29     R.cache_0.16.0   
  [89] tidyr_1.2.0       httpuv_1.6.5      R.utils_2.12.0    munsell_0.5.0    
  [93] viridisLite_0.4.0 bslib_0.4.0       sessioninfo_1.2.2
```

```
  [1] "2022-08-31 10:28:24 MDT"
```

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
<template id="d162f0af-8922-4c3f-948c-8bf906c3f511"><style>
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
</style><div class="tabwid"><style>.cl-f0cf5664{}.cl-f06b2f9a{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f06b2fcc{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f06ba998{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f06ba9b6{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f06cc986{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cc9d6{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cc9f4{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cc9fe{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca08{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca12{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca26{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca30{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca3a{width:82.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca44{width:64.5pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca4e{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca62{width:58pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca6c{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca76{width:82.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca80{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca8a{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca94{width:64.5pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f06cca9e{width:58pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-f0cf5664'>
```
<caption class="Table Caption">

(\#tab:Table1)Experimental study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-f06cca9e"><p class="cl-f06ba998"><span class="cl-f06b2f9a">Subjects</span></p></td><td class="cl-f06cca80"><p class="cl-f06ba998"><span class="cl-f06b2f9a">Protocol 1</span></p></td><td class="cl-f06cca76"><p class="cl-f06ba998"><span class="cl-f06b2f9a">Protocol 2</span></p></td><td class="cl-f06cca8a"><p class="cl-f06ba998"><span class="cl-f06b2f9a">Protocol 3</span></p></td><td class="cl-f06cca94"><p class="cl-f06ba998"><span class="cl-f06b2f9a">Protocol 4</span></p></td><td class="cl-f06cca6c"><p class="cl-f06ba998"><span class="cl-f06b2f9a">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-f06cca12"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">Mouse1</span></p></td><td class="cl-f06cc9d6"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">Drug treatment</span></p></td><td class="cl-f06cc9f4"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">Liver dissection</span></p></td><td class="cl-f06cca08"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">RNA extraction</span></p></td><td class="cl-f06cc9fe"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">RNA-Seq</span></p></td><td class="cl-f06cc986"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f06cca12"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">Mouse2</span></p></td><td class="cl-f06cc9d6"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">Drug treatment</span></p></td><td class="cl-f06cc9f4"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">Liver dissection</span></p></td><td class="cl-f06cca08"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">RNA extraction</span></p></td><td class="cl-f06cc9fe"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">RNA-Seq</span></p></td><td class="cl-f06cc986"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f06cca62"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">Mousen</span></p></td><td class="cl-f06cca30"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">Drug treatment</span></p></td><td class="cl-f06cca3a"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">Liver dissection</span></p></td><td class="cl-f06cca4e"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">RNA extraction</span></p></td><td class="cl-f06cca44"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">RNA-Seq</span></p></td><td class="cl-f06cca26"><p class="cl-f06ba9b6"><span class="cl-f06b2fcc">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="e5831bf5-4aca-495a-88d0-a17405376903"></div>
<script>
var dest = document.getElementById("e5831bf5-4aca-495a-88d0-a17405376903");
var template = document.getElementById("d162f0af-8922-4c3f-948c-8bf906c3f511");
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
<template id="00303c5a-ee33-4e02-bfe2-383478d31f5e"><style>
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
</style><div class="tabwid"><style>.cl-f17bb436{}.cl-f15123ec{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f151240a{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f15188fa{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f1518936{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f152a0aa{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a0d2{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a0f0{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a104{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a122{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a12c{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a136{width:85.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a14a{width:70.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a15e{width:80.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a168{width:116.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a169{width:70.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a172{width:81.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a186{width:80.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a190{width:85.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a19a{width:81.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a1ae{width:70.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a1b8{width:70.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f152a1cc{width:116.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-f17bb436'>
```
<caption class="Table Caption">

(\#tab:Table2)Experimental study with replicates Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-f152a1b8"><p class="cl-f15188fa"><span class="cl-f15123ec">Subjects</span></p></td><td class="cl-f152a186"><p class="cl-f15188fa"><span class="cl-f15123ec">Protocol 1</span></p></td><td class="cl-f152a19a"><p class="cl-f15188fa"><span class="cl-f15123ec">Protocol 2</span></p></td><td class="cl-f152a190"><p class="cl-f15188fa"><span class="cl-f15123ec">Samples</span></p></td><td class="cl-f152a1cc"><p class="cl-f15188fa"><span class="cl-f15123ec">Protocol 3</span></p></td><td class="cl-f152a1ae"><p class="cl-f15188fa"><span class="cl-f15123ec">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-f152a104"><p class="cl-f1518936"><span class="cl-f151240a">CellCulture1</span></p></td><td class="cl-f152a0d2"><p class="cl-f1518936"><span class="cl-f151240a">Drug treatment</span></p></td><td class="cl-f152a12c"><p class="cl-f1518936"><span class="cl-f151240a">RNA extraction</span></p></td><td class="cl-f152a0aa"><p class="cl-f1518936"><span class="cl-f151240a">TechnicalRep1a</span></p></td><td class="cl-f152a0f0"><p class="cl-f1518936"><span class="cl-f151240a">Microarray hybridization</span></p></td><td class="cl-f152a122"><p class="cl-f1518936"><span class="cl-f151240a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f152a104"><p class="cl-f1518936"><span class="cl-f151240a">CellCulture1</span></p></td><td class="cl-f152a0d2"><p class="cl-f1518936"><span class="cl-f151240a">Drug treatment</span></p></td><td class="cl-f152a12c"><p class="cl-f1518936"><span class="cl-f151240a">RNA extraction</span></p></td><td class="cl-f152a0aa"><p class="cl-f1518936"><span class="cl-f151240a">TechnicalRep2a</span></p></td><td class="cl-f152a0f0"><p class="cl-f1518936"><span class="cl-f151240a">Microarray hybridization</span></p></td><td class="cl-f152a122"><p class="cl-f1518936"><span class="cl-f151240a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f152a104"><p class="cl-f1518936"><span class="cl-f151240a">CellCulture1</span></p></td><td class="cl-f152a0d2"><p class="cl-f1518936"><span class="cl-f151240a">Drug treatment</span></p></td><td class="cl-f152a12c"><p class="cl-f1518936"><span class="cl-f151240a">RNA extraction</span></p></td><td class="cl-f152a0aa"><p class="cl-f1518936"><span class="cl-f151240a">TechnicalRep3a</span></p></td><td class="cl-f152a0f0"><p class="cl-f1518936"><span class="cl-f151240a">Microarray hybridization</span></p></td><td class="cl-f152a122"><p class="cl-f1518936"><span class="cl-f151240a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f152a104"><p class="cl-f1518936"><span class="cl-f151240a">CellCulture1</span></p></td><td class="cl-f152a0d2"><p class="cl-f1518936"><span class="cl-f151240a">Drug treatment</span></p></td><td class="cl-f152a12c"><p class="cl-f1518936"><span class="cl-f151240a">RNA extraction</span></p></td><td class="cl-f152a0aa"><p class="cl-f1518936"><span class="cl-f151240a">TechnicalRep1b</span></p></td><td class="cl-f152a0f0"><p class="cl-f1518936"><span class="cl-f151240a">Microarray hybridization</span></p></td><td class="cl-f152a122"><p class="cl-f1518936"><span class="cl-f151240a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f152a104"><p class="cl-f1518936"><span class="cl-f151240a">CellCulture1</span></p></td><td class="cl-f152a0d2"><p class="cl-f1518936"><span class="cl-f151240a">Drug treatment</span></p></td><td class="cl-f152a12c"><p class="cl-f1518936"><span class="cl-f151240a">RNA extraction</span></p></td><td class="cl-f152a0aa"><p class="cl-f1518936"><span class="cl-f151240a">TechnicalRep2b</span></p></td><td class="cl-f152a0f0"><p class="cl-f1518936"><span class="cl-f151240a">Microarray hybridization</span></p></td><td class="cl-f152a122"><p class="cl-f1518936"><span class="cl-f151240a">GEOXXXXX</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f152a169"><p class="cl-f1518936"><span class="cl-f151240a">CellCulture1</span></p></td><td class="cl-f152a15e"><p class="cl-f1518936"><span class="cl-f151240a">Drug treatment</span></p></td><td class="cl-f152a172"><p class="cl-f1518936"><span class="cl-f151240a">RNA extraction</span></p></td><td class="cl-f152a136"><p class="cl-f1518936"><span class="cl-f151240a">TechnicalRep3b</span></p></td><td class="cl-f152a168"><p class="cl-f1518936"><span class="cl-f151240a">Microarray hybridization</span></p></td><td class="cl-f152a14a"><p class="cl-f1518936"><span class="cl-f151240a">GEOXXXXX</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="2799a790-1cb9-47f2-ac87-6b24967c079f"></div>
<script>
var dest = document.getElementById("2799a790-1cb9-47f2-ac87-6b24967c079f");
var template = document.getElementById("00303c5a-ee33-4e02-bfe2-383478d31f5e");
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
<template id="7819c25c-0ef3-4f88-a140-ebd8c655e95a"><style>
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
</style><div class="tabwid"><style>.cl-f2216bc4{}.cl-f1f68ab2{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f1f68af8{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f1f6f722{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f1f6f740{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f1f81120{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f81148{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f8115c{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f81166{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f81170{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f8117a{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f8118e{width:118pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f811ac{width:125.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f811b6{width:168.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f811ca{width:83.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f811d4{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f811de{width:118pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f811f2{width:125.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f811fc{width:168.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f1f81210{width:83.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-f2216bc4'>
```
<caption class="Table Caption">

(\#tab:Table3)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-f1f81210"><p class="cl-f1f6f722"><span class="cl-f1f68ab2">Sample</span></p></td><td class="cl-f1f811de"><p class="cl-f1f6f722"><span class="cl-f1f68ab2">Geographical Location</span></p></td><td class="cl-f1f811f2"><p class="cl-f1f6f722"><span class="cl-f1f68ab2">Geoposition</span></p></td><td class="cl-f1f811fc"><p class="cl-f1f6f722"><span class="cl-f1f68ab2">Protocol</span></p></td><td class="cl-f1f811d4"><p class="cl-f1f6f722"><span class="cl-f1f68ab2">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-f1f81170"><p class="cl-f1f6f740"><span class="cl-f1f68af8">Body of water 1</span></p></td><td class="cl-f1f81148"><p class="cl-f1f6f740"><span class="cl-f1f68af8">location name</span></p></td><td class="cl-f1f8115c"><p class="cl-f1f6f740"><span class="cl-f1f68af8">latitude, longitude, altitude</span></p></td><td class="cl-f1f81166"><p class="cl-f1f6f740"><span class="cl-f1f68af8">Measurement of surface temperature</span></p></td><td class="cl-f1f81120"><p class="cl-f1f6f740"><span class="cl-f1f68af8">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f1f81170"><p class="cl-f1f6f740"><span class="cl-f1f68af8">Body of water 2</span></p></td><td class="cl-f1f81148"><p class="cl-f1f6f740"><span class="cl-f1f68af8">location name</span></p></td><td class="cl-f1f8115c"><p class="cl-f1f6f740"><span class="cl-f1f68af8">latitude, longitude, altitude</span></p></td><td class="cl-f1f81166"><p class="cl-f1f6f740"><span class="cl-f1f68af8">Measurement of surface temperature</span></p></td><td class="cl-f1f81120"><p class="cl-f1f6f740"><span class="cl-f1f68af8">dataFile2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f1f811ca"><p class="cl-f1f6f740"><span class="cl-f1f68af8">Body of water n</span></p></td><td class="cl-f1f8118e"><p class="cl-f1f6f740"><span class="cl-f1f68af8">location name</span></p></td><td class="cl-f1f811ac"><p class="cl-f1f6f740"><span class="cl-f1f68af8">latitude, longitude, altitude</span></p></td><td class="cl-f1f811b6"><p class="cl-f1f6f740"><span class="cl-f1f68af8">Measurement of surface temperature</span></p></td><td class="cl-f1f8117a"><p class="cl-f1f6f740"><span class="cl-f1f68af8">dataFile3</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="8c1b268a-d2d3-4eb8-ab53-c9988840fcd8"></div>
<script>
var dest = document.getElementById("8c1b268a-d2d3-4eb8-ab53-c9988840fcd8");
var template = document.getElementById("7819c25c-0ef3-4f88-a140-ebd8c655e95a");
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
<template id="e3603ace-e71e-4284-aca2-8fd7a8a5b824"><style>
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
</style><div class="tabwid"><style>.cl-f2d6af66{}.cl-f2ada0e4{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f2ada102{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-f2ae0e80{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f2ae0ea8{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-f2af1690{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af16ae{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af16cc{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af16d6{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af16e0{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af16ea{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af16f4{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af16fe{width:155.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1708{width:211.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1712{width:87.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1726{width:59.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1727{width:57.6pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af173a{width:132.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1744{width:146.1pt;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af174e{width:87.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1758{width:59.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1762{width:155.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af176c{width:211.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1776{width:132.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1780{width:146.1pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-f2af1794{width:57.6pt;background-color:transparent;vertical-align: bottom;border-bottom: 1pt solid rgba(102, 102, 102, 1.00);border-top: 1pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-f2d6af66'>
```
<caption class="Table Caption">

(\#tab:Table4)Observational study example Data Records table. [Table created using the flextable package.]

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-f2af174e"><p class="cl-f2ae0e80"><span class="cl-f2ada0e4">Source</span></p></td><td class="cl-f2af1758"><p class="cl-f2ae0e80"><span class="cl-f2ada0e4">Sample</span></p></td><td class="cl-f2af1762"><p class="cl-f2ae0e80"><span class="cl-f2ada0e4">Sample Number</span></p></td><td class="cl-f2af176c"><p class="cl-f2ae0e80"><span class="cl-f2ada0e4">Temporal Range</span></p></td><td class="cl-f2af1776"><p class="cl-f2ae0e80"><span class="cl-f2ada0e4">Protocol 1</span></p></td><td class="cl-f2af1780"><p class="cl-f2ae0e80"><span class="cl-f2ada0e4">Protocol 2</span></p></td><td class="cl-f2af1794"><p class="cl-f2ae0e80"><span class="cl-f2ada0e4">Data</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-f2af16cc"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Database URL 1</span></p></td><td class="cl-f2af1690"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Dataset 1</span></p></td><td class="cl-f2af16ae"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Number of samples in the dataset</span></p></td><td class="cl-f2af16ea"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Range of measurements reported in the dataset</span></p></td><td class="cl-f2af16f4"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Data assimilation procedure</span></p></td><td class="cl-f2af16d6"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Method to generate output data</span></p></td><td class="cl-f2af16e0"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f2af16cc"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Database URL 1</span></p></td><td class="cl-f2af1690"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Dataset 2</span></p></td><td class="cl-f2af16ae"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Number of samples in the dataset</span></p></td><td class="cl-f2af16ea"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Range of measurements reported in the dataset</span></p></td><td class="cl-f2af16f4"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Data assimilation procedure</span></p></td><td class="cl-f2af16d6"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Method to generate output data</span></p></td><td class="cl-f2af16e0"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">dataFile1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-f2af1712"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Database URL 2</span></p></td><td class="cl-f2af1726"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Dataset n</span></p></td><td class="cl-f2af16fe"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Number of samples in the dataset</span></p></td><td class="cl-f2af1708"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Range of measurements reported in the dataset</span></p></td><td class="cl-f2af173a"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Data assimilation procedure</span></p></td><td class="cl-f2af1744"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">Method to generate output data</span></p></td><td class="cl-f2af1727"><p class="cl-f2ae0ea8"><span class="cl-f2ada102">dataFile2</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="e93f9ce1-b7cd-4351-bcad-5b486fb88c49"></div>
<script>
var dest = document.getElementById("e93f9ce1-b7cd-4351-bcad-5b486fb88c49");
var template = document.getElementById("e3603ace-e71e-4284-aca2-8fd7a8a5b824");
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
