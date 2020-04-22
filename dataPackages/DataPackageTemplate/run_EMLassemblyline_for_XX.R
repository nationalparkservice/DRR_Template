## @knitr FedTandEsource_dp

# To-do List (delete these as they are completed)
#
# 1. Set DataPackage Parameters
# 2. Update the files to be loaded. these should include the data files, report numbers, and project metadata.
# 3. Update packageDataFrame, packageRefID, and packageURL parameters.
# 4. Run the portion of the script through creation of the table attribute tables
# 5. Update the attribute and factor tables. The factor table will only include factors included in the data set; 
#    ensure factors for data quality flags include all potential options regardless of whether they're present in the data set.
# 6. Update the georgraphic coverage information. Note that this information may need to originate from ancillary data sets.
# 7. Update the temporal coverage information. Note that this information may need to originate from ancillary data sets.
# 8. Update the taxonomic coverage information.
# 9. Update / add additional EML lists to be added
#     a. citation information for the protocol
#     b. sampling design geographic coverage
#     c. sampling design taxonomic coverage
#     d. sampling design temporal coverage
# 10. Run full script until no errors.
# 11. Validate the resultant eml file using https://knb.ecoinformatics.org/emlparser/ 

# General Setup Stuff
pkgList <- c("devtools",
             "EML",
             "EMLassemblyline",
             "lubridate",
             "readtext",
             "zip"
)

inst <- pkgList %in% installed.packages()
if (length(pkgList[!inst]) > 0) {
  install.packages(pkgList[!inst], dep = TRUE,
                   repos = "https://cloud.r-project.org")
}

lapply(pkgList, library, character.only = TRUE, quietly = TRUE)

# Load Data Files.
setwd(params$projectDir)
load(file="data/temp/FedTandEsource.RData")
load(file="data/temp/projectMetadata.RData")
load(file="data/temp/reportParameters.RData")

# Set DataPackage Parameters
datapackageTitle<-params$dataPackage1Title                      # official title of the data package (this should come from the DRR parameters)
datapackageDescription <- params$dataPackage1Description        # short title or description (this should come from the DRR parameters)
publicationYear<-year(Sys.Date())                               # year of data set publication to Data Store.
datapackageDirectoryName=paste0("dataPackages/FedTandEsource")  # subdirectory where the data package processing files are kept (such as "2018_Analysis_PORs")

# Set Up Directories and File Names
DataPublicationReportRefID<-params$reportRefID
DataPublicationReportURL<-paste0("https://irma.nps.gov/DataStore/Reference/Profile/",DataPublicationReportRefID)

packageDataFrame<-FedTandEsource
packageRefID<-params$dataPackage1RefID
packageURL<-paste0("https://irma.nps.gov/DataStore/Reference/Profile/",packageRefID)

# Create Product File Names
dataDirectory <- paste0(datapackageDirectoryName,"/data_objects/")
metadataDirectory<-paste0(datapackageDirectoryName,"/metadata_templates/")
emlDirectory<-paste0(datapackageDirectoryName,"/eml/")
fileprefix <- paste0("FederalConservationListTaxa_BRD_Edition_")
datafilename <-paste0(dataDirectory,fileprefix,packageRefID,"-data.csv")
metadatafilename <- paste0(emlDirectory,fileprefix,packageRefID,"-metadata.xml")
manifestfilename <- paste0(dataDirectory,fileprefix,packageRefID,"-manifest.txt")
datapackagefilename <- paste0("output/",fileprefix,packageRefID,"-datapackage.zip")

# Copy Data File to Data Package directory
write.csv(packageDataFrame,datafilename,row.names=FALSE)

# Generate Common EML Metadata Elements

## Copy templates from core templates. These should be reviewed and updated before creating EML file

intellectual_rights<-readLines(paste0(metadataDirectory,"intellectual_rights.txt"),encoding="UTF-8")

abstract<-params$packageAbstract
writeLines(abstract,paste0(metadataDirectory,"abstract.txt"))

methodstext<-paste0("Methods for the generation of this data set are documented in Data Release Report ",gsub("—","--",params$reportNumber), ", available at ",DataPublicationReportURL,".")
writeLines(methodstext,paste0(metadataDirectory,"methods.txt"))

themekeywords<-read.delim(paste0(metadataDirectory,"keywords.txt"))
themekeywords<-paste(themekeywords$keyword, collapse = ', ')

## Create Metadata Template files. These should be reviewed and updated before creating EML file

# Create Attribute Table

template_table_attributes(
  path = metadataDirectory,
  data.path = dataDirectory,
  data.table = paste0(fileprefix,packageRefID,"-data.csv")
)

# Template categorical variables
template_categorical_variables(
  path = metadataDirectory,
  data.path = dataDirectory
)

# Create Coverage Information

## Template geographic coverage

geographicDescription <- "Parks within the National Park System"

## Get Temporal Coverage
beginDate <- Sys.Date()
endDate <- Sys.Date()

## Create EML
make_eml(
  path = metadataDirectory,
  data.path = dataDirectory,
  eml.path = emlDirectory,
  dataset.title = datapackageTitle, 
  temporal.coverage = c(as.Date(beginDate), as.Date(endDate)),
  maintenance.description = 'completed',
  data.table = paste0(fileprefix,packageRefID,"-data.csv"),
  data.table.description = datapackageDescription,
  data.url = packageURL,
  user.id = 'jcdevivo',
  user.domain = 'NPS-IMD',
  package.id = paste0(fileprefix,packageRefID,"-metadata")
)

# Read EML into R object so we can add additional elements
eml_temp<-read_eml(paste0(emlDirectory,fileprefix,packageRefID,"-metadata.xml"))

# Create Manifest File

cat("This data package was produced by the National Park Service (NPS) Inventory and Monitoring Division and can be downloaded from the [NPS Data Store](https://irma.nps.gov/DataStore/Reference/Profile/",packageRefID,").",file=manifestfilename,"\n",sep="") 
cat("These data are provided under the Creative Commons CC0 1.0 “No Rights Reserved” (see: https://creativecommons.org/publicdomain/zero/1.0/).",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("DATA PRODUCT INFORMATION",file=manifestfilename,sep="\n",append=TRUE)
cat("------------------------",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

# ID
cat("ID: ",packageRefID," Data Store Code.",file=manifestfilename,"\n",sep="",append=TRUE) 
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

#Title
cat("Title: ",datapackageTitle,file=manifestfilename,"\n",sep="",append=TRUE) 
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

#Description
cat("Description: ",datapackageDescription,file=manifestfilename,"\n",sep="",append=TRUE) 
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

cat("- This readme file: ", fileprefix, packageRefID, "-manifest.text","\n",file=manifestfilename,sep="",append=TRUE)

cat("- Machine-readable metadata file describing the data set(s): ",fileprefix, packageRefID, "-metadata.xml. This file uses the Ecological Metadata Language (EML) schema. Learn more about this format at https://knb.ecoinformatics.org/external//emlparser/docs/eml-2.1.1/index.html#N1022A.",file=manifestfilename, "\n",sep="",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("This zip package contains the following data set(s):",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("- ",fileprefix, packageRefID, "-data.csv - ", datapackageDescription,".\n",file=manifestfilename,sep="",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)


cat("ADDITIONAL INFORMATION",file=manifestfilename,sep="\n",append=TRUE)
cat("------------------------",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("Primary related products: The following product(s) were created concurrently with this dataset:",file=manifestfilename,sep="\n",append=TRUE)
cat(" ",file=manifestfilename,sep="\n",append=TRUE)

cat("1. Data Release Report. Document describing the methods and the analysis code used to generate data set. Available at ", DataPublicationReportURL, ".", "\n",file=manifestfilename,sep="",append=TRUE)
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



### Zip up file

zipr(datapackagefilename,c(datafilename,manifestfilename,metadatafilename), recurse=FALSE)