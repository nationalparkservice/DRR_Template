### The data package will be a zip file containing:
###  1. zip file of csv data
###  2. xml metadata file (EML format)
###  3. data package manifest (data package info and listing of files)


#### Step 0a. User-defined variables ####

# To do:
#   1. If you haven't already, make a copy of the DataPackageTemplate folder and rename it to the name of the data package.
#   2. Rename this file to contain the name of your data package.
#   3. Assign values to the variables below.

data_pkg_name <- "MyDataPackage"  # The name of the data package must exactly match the name of the data package folder (where this file lives)
dd_tables_path <- here::here("data", "dictionary", "data_dictionary_tables.txt")  # The file path to the table data dictionary
dd_fields_path <- here::here("data", "dictionary", "data_dictionary_fields.txt")  # The file path to the fields data dictionary
dd_categories_path <- here::here("data", "dictionary", "data_dictionary_categories.txt")  # The file path to the categories data dictionary

# The following are named vectors mapping the data dictionary columns required by EML (or expected by this script) to the actual data dictionary columns.
# If your data dictionary column names match the EML required columns, leave this as is.
# Otherwise, change the column names on the **left hand side** of the equals sign to the names of the columns in your data dictionary (e.g. "my_table_col" = "Table_Name")
dd_tables_cols <- c("Table_Name" = "Table_Name",
                    "File_Name" = "File_Name",
                    "Description" = "Description"
                    )
dd_fields_cols <- c("tableName" = "tableName",
                    "attributeName" = "attributeName",
                    "attributeDefinition" = "attributeDefinition",
                    "class" = "class",
                    "unit" = "unit",
                    "dateTimeFormatString" = "dateTimeFormatString",
                    "missingValueCode" = "missingValueCode",
                    "missingValueCodeExplanation" = "missingValueCodeExplanation")
dd_categories_cols <- c("attributeName" = "attributeName",
                        "code" = "code",
                        "definition" = "definition")

#### Step 0b. Get everything set up. If there is an R package used to load your data, install and load it here. ####

if (!("nccnbirds" %in% installed.packages())) remotes::install_github("NCCN-Landbirds/nccn-landbirds-package")  # Your R package here
if (!("EMLassemblyline" %in% installed.packages())) remotes::install_github("EDIorg/EMLassemblyline")

pkgList <- c("devtools",
             "EML",
             "EMLassemblyline",
             "lubridate",
             "readtext",
             "zip",
             "readxl",
             "readr",
             "dplyr",
             "nccnbirds"  # Your R package here
)

inst <- pkgList %in% installed.packages()
if (length(pkgList[!inst]) > 0) {
  install.packages(pkgList[!inst], dep = TRUE,
                   repos = "https://cloud.r-project.org")
}

lapply(pkgList, library, character.only = TRUE, quietly = TRUE)


#### Step 0c: knit the DRR ####
## YOU MUST DO THIS FIRST ##

load(here::here("data", "temp", "reportParameters.RData"))

#### Step 1: zip the data ####
# Data is expected to be stored in a set of .csv files in the data/final folder.
# Copy them to the data_objects folder.

# Get table names and descriptions
# Expected columns: Table_Name, File_Name, Description
tables_dict <- read_tsv(here::here("data", "dictionary", "data-dictionary-tables.txt"), lazy = FALSE)
tables_dict <- tables_dict[names(dd_tables_cols)]  # Select only expected cols
names(tables_dict) <- dd_tables_cols  # Apply standard col names

# Copy data files and store them in data objects folder
file_names <- tables_dict$File_Name  # Depending on how your files are named, you may need to do some more work to get the filenames
file.copy(from = here::here("data", "final", file_names),
          to = here::here("dataPackages", data_pkg_name, "data_objects"),
          overwrite = TRUE)

#### Step 2: generate the metadata file ####
### Step 2a: Review or edit "Easy" template files
# Must be done in MS Excel or a text editor. Files to edit:
# metadata_templates/personnel.txt
# metadata_templates/keywords.txt
# metadata_templates/intellectual_rights.txt (version in the template should generally not be modified)
# metadata_templates/custom_units.txt (not typically needed)

### Step 2b: Generate the attribute tables and the categorical variables tables

## Get attributes
# Columns are attributeName, attributeDefinition, class, unit, dateTimeFormatString, missingValueCode, missingValueCodeExplanation
# Retrieve from data dictionary and standardize columns

fields_dict <- readr::read_tsv(here::here("data", "dictionary", "data-dictionary-fields.txt"), lazy = FALSE)
fields_dict <- fields_dict[names(dd_fields_cols)]
names(fields_dict) <- dd_fields_cols

# Get R datatypes for data - first, get a list of all the data as dataframes, then use sapply and typeof() to get each column type
# This code must be modified to work with your data
# Make sure that however you load your data, the column data types are correct
all_data <- nccnbirds::LoadLandbirds(data_path = here::here("data", "raw"), cache = FALSE)

data_types <- sapply(all_data, function(df) {sapply(df, class)})

# Add R datatypes to data dictionary
# There must be a more R way to do this

class_map <- c(
  character = "character", 
  logical = "character", 
  factor = "character",
  integer = "numeric",
  integer64 = "numeric",
  double = "numeric",
  numeric = "numeric",
  Date = "Date",
  POSIXct = "Date",
  POSIXt = "Date")

for (i in 1:nrow(fields_dict)) {
  tbl <- fields_dict$tableName[i]
  col <- fields_dict$attributeName[i]
  data_type <- data_types[[tbl]][col]
  fields_dict[[i, "storageType"]] <- data_type
}

fields_dict %<>% dplyr::mutate(class = unname(class_map[storageType])) %>%
  dplyr::select(-storageType)  # make_eml doesn't like storageType but we may want to include it in our metadata someday

# Assign missing value code and explanation. You may need to customize this for your data.
fields_dict %<>% dplyr::mutate(missingValueCode = ifelse(is.na(missingValueCode), "Empty string", missingValueCode),
                               missingValueCodeExplanation = ifelse(is.na(missingValueCodeExplanation), "Not applicable or data not collected", missingValueCodeExplanation))

## Get categorical vars
cat_vars <- readr::read_tsv(here::here("data", "dictionary", "data-dictionary-categories.txt"), lazy = FALSE)

# Write attributes and categorical vars to tab separated text files
for (datafile in unique(fields_dict$tableName)) {
  # Table-level attributes
  attr <- fields_dict %>% 
    dplyr::filter(tableName == datafile) %>%
    dplyr::select(-tableName)
  
  # Table-level categorical vars
  cat <- cat_vars[cat_vars$attributeName %in% attr$attributeName, ]
  
  readr::write_tsv(attr, here::here("dataPackages", "DataPackageTemplate", "metadata_templates", paste0("attributes_", datafile, ".txt")))
  readr::write_tsv(cat, here::here("dataPackages", "DataPackageTemplate", "metadata_templates", paste0("catvars_", datafile, ".txt")))
}

#### Step 3: Set Geographic Coverage ####
# Change this to match your data
geographicDescription <- "Landbird surveys in NCCN parks"

# Generate geographic coverage
template_geographic_coverage(
  path = here::here("dataPackages", "DataPackageTemplate", "metadata_templates"),
  data.path = here::here("data", "raw"),
  data.table = 'Sites.csv',
  site.col = 'Site_code',
  lat.col = 'UTME_public',
  lon.col = 'UTMN_public'
)

#### Step 4: Set Temporal Coverage ####
beginDate <- min(all_data$Events$Event_date)
endDate <- max(all_data$Events$Event_date)

#### Step 5: Create EML File ####
intellectual_rights<-readLines(here::here("dataPackages", "DataPackageTemplate", "metadata_templates","intellectual_rights.txt"),encoding="UTF-8")

themekeywords<-read.delim(here::here("dataPackages", "DataPackageTemplate", "metadata_templates","keywords.txt"))
themekeywords<-paste(themekeywords$keyword, collapse = ', ')

abstract<-params$packageAbstract
writeLines(abstract,here::here("dataPackages", "DataPackageTemplate", "metadata_templates","abstract.txt"))

methodstext<-paste0("Methods for the generation of this data set are documented in Data Release Report ",gsub("—","--",params$reportNumber), ", available at ", "https://irma.nps.gov/DataStore/Reference/Profile/", params$reportRefID,".")
writeLines(methodstext,here::here("dataPackages", "DataPackageTemplate", "metadata_templates","methods.txt"))

make_eml(
  path = here::here("dataPackages", "DataPackageTemplate", "metadata_templates"),
  data.path = here::here("dataPackages", "DataPackageTemplate", "data_objects"),
  data.table = tables_dict$File_Name,
  data.table.name = tables_dict$Table_Name,
  data.table.description = tables_dict$Table_Description,
  eml.path = here::here("dataPackages", "DataPackageTemplate", "eml"),
  dataset.title = params$dataPackage1Title, 
  temporal.coverage = c(as.Date(beginDate), as.Date(endDate)),
  maintenance.description = 'completed',
  package.id = paste0(params$dataPackage1Description, "_", params$dataPackage1RefID, "_metadata")
)

#### Step 6: Create Manifest File and zip up the package ####

manifestfilename <- here::here("dataPackages", data_pkg_name, "eml", paste0(params$dataPackage1Description, "_", params$dataPackage1RefID, "_manifest.txt"))
metadatafilename <- here::here("dataPackages", data_pkg_name, "eml", paste0(params$dataPackage1Description, "_", params$dataPackage1RefID, "_metadata.xml"))
datafilename <- here::here("dataPackages", data_pkg_name, "eml", paste0(params$dataPackage1Description, "_", params$dataPackage1RefID, "_data.zip"))
datapackagefilename <- here::here("dataPackages", data_pkg_name, "eml", paste0(params$dataPackage1Description, "_", params$dataPackage1RefID, "_datapackage.zip"))

cat("This data package was produced by the National Park Service (NPS) Inventory and Monitoring Division and can be downloaded from the [NPS Data Store](https://irma.nps.gov/DataStore/Reference/Profile/",params$dataPackage1RefID,").",file=manifestfilename,"\n",sep="") 
cat("These data are provided under the Creative Commons CC0 1.0 “No Rights Reserved” (see: https://creativecommons.org/publicdomain/zero/1.0/).",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("DATA PRODUCT INFORMATION",file=manifestfilename,sep="\n",append=TRUE)
cat("------------------------",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

# ID
cat("ID: ", params$dataPackage1RefID, " Data Store Code.",file=manifestfilename,"\n",sep="",append=TRUE) 
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

#Title
cat("Title: ",params$dataPackage1Title, file=manifestfilename,"\n",sep="",append=TRUE) 
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

#Description
cat("Description: ",params$dataPackage1Description,file=manifestfilename,"\n",sep="",append=TRUE) 
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

#Abstract
cat("Abstract: ",abstract,file=manifestfilename,"\n",sep="",append=TRUE) 
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

#Brief Study Area Description
cat("Brief Study Area Description: ",geographicDescription,file=manifestfilename,"\n",sep="",append=TRUE) 
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

#Keywords
cat("Keywords:",unlist(themekeywords),file=manifestfilename,"\n",sep=" ",append=TRUE) 
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("Date for Data Publication: ",as.character(today()),file=manifestfilename,"\n",sep="",append=TRUE) 
cat("This zip package was generated on: ",as.character(today()),file=manifestfilename,"\n",sep="",append=TRUE) 
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("DATA PACKAGE CONTENTS",file=manifestfilename,sep="\n",append=TRUE)
cat("------------------------",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("This zip package contains the following documentation files:",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("- This readme file: ", manifestfilename,"\n",file=manifestfilename,sep="",append=TRUE)

cat("- Machine-readable metadata file describing the data set(s): ", params$dataPackage1Description, "_", params$dataPackage1RefID, "_metadata.xml. This file uses the Ecological Metadata Language (EML) schema. Learn more about this format at https://knb.ecoinformatics.org/external//emlparser/docs/eml-2.1.1/index.html#N1022A.",file=manifestfilename, "\n",sep="",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("This zip package contains the following data set(s):",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat(params$dataPackage1Description, "_", params$dataPackage1RefID, "_data.zip",file=manifestfilename,sep="",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("ADDITIONAL INFORMATION",file=manifestfilename,sep="\n",append=TRUE)
cat("------------------------",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("Primary related products: The following product(s) were created concurrently with this dataset:",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("1. Data Release Report. Document describing the methods and the analysis code used to generate data set. Available at ", "https://irma.nps.gov/DataStore/Reference/Profile/", params$reportRefID, ".", "\n",file=manifestfilename,sep="",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("CHANGE LOG",file=manifestfilename,sep="\n",append=TRUE)
cat("------------------------",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("N/A",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("ADDITIONAL REMARKS",file=manifestfilename,sep="\n",append=TRUE)
cat("------------------------",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("N/A",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)


cat("NPS DATA POLICY AND CITATION GUIDELINES",file=manifestfilename,sep="\n",append=TRUE)
cat("------------------------",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("See NPS Inventory and Monitoring Division's data policy and citation guidelines at https://irma.nps.gov/content/portal/about/.",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)


cat("DATA QUALITY AND VERSIONING",file=manifestfilename,sep="\n",append=TRUE)
cat("------------------------",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("The data contained in this file are considered Accepted under the IMD Data Certification Guidance (https://www.google.com/url?q=https://irma.nps.gov/DataStore/Reference/Profile/2227397). Updates to the data, QA/QC and/or processing algorithms over time will occur on an as-needed basis.  Please check back to this site for updates tracked in change logs.",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)



### Zip up data
zip::zip(zipfile = datafilename, 
         files = file_names, 
         root = here::here("dataPackages", data_pkg_name, "data_objects"))
# Zip the whole package
zip::zipr(datapackagefilename,c(datafilename,manifestfilename,metadatafilename), recurse=FALSE)
