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

###### Step 1. Get everything set up. ###### General Setup Stuff

# remotes::install_github("EDIorg/EMLassemblyline" # Only required if not already installed

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

load("data/temp/reportParameters.RData")
setwd(params$projectDir)

###### Step 2. Set Required Parameters #######
dirName<-"DataPackageTemplate"                                  # Name of the directory where the data packaging scripts are stored. This should just be the directory name (such as "2018_Analysis_PORs"); not the whole path.
dataset2Package<-"data/final/FedTandEclean.RData"
packageRefID<-params$dataPackage1RefID                          # Data Store Reference ID for the data package (this should come from the DRR parameters)
datapackageTitle<-params$dataPackage1Title                      # official title of the data package (this should come from the DRR parameters)
datapackageDescription <- params$dataPackage1Description        # short title or description (this should come from the DRR parameters)

###### Step 3. Load Data Files and Create CSV file. ######
load(file=dataset2Package)                              
load(file="data/temp/projectMetadata.RData")

# Set Up Directories and File Names
DataPublicationReportRefID<-params$reportRefID
DataPublicationReportURL<-paste0("https://irma.nps.gov/DataStore/Reference/Profile/",DataPublicationReportRefID)
publicationYear<-year(Sys.Date())                               # year of data set publication to Data Store.
datapackageDirectoryName=paste0("dataPackages/",dirName)        # subdirectory where the data package processing files are kept 

packageDataFrame<-load(file=dataset2Package)

packageURL<-paste0("https://irma.nps.gov/DataStore/Reference/Profile/",packageRefID)

# Create Product File Names
dataDirectory <- paste0(datapackageDirectoryName,"/data_objects/")
metadataDirectory<-paste0(datapackageDirectoryName,"/metadata_templates/")
emlDirectory<-paste0(datapackageDirectoryName,"/eml/")
fileprefix <- gsub(" ","_",datapackageDescription)
datafilename <-paste0(dataDirectory,fileprefix,packageRefID,"-data.csv")
metadatafilename <- paste0(emlDirectory,fileprefix,packageRefID,"-metadata.xml")
manifestfilename <- paste0(dataDirectory,fileprefix,packageRefID,"-manifest.txt")
datapackagefilename <- paste0("output/",fileprefix,packageRefID,"-datapackage.zip")

# Copy Data File to Data Package directory
write.csv(packageDataFrame,datafilename,row.names=FALSE)

#### Step 4. Review or edit "Easy" template files
# Must be done in MS Excel or a text editor. Files to edit:
# metadata_templates/personnel.txt
# metadata_templates/keywords.txt
# metadata_templates/intellectual_rights.txt (version in the template should generally not be modified)
# metadata_templates/custom_units.txt (not typically needed)


#### Step 5. Create Attribute Table  ####
#
# You will need to edit this before step 6.
template_table_attributes(
  path = metadataDirectory,
  data.path = dataDirectory,
  data.table = paste0(fileprefix,packageRefID,"-data.csv")
)

#### Step 6. Create CatVars Table  ####
#
# You will need to edit this before step 7.


# Template categorical variables
template_categorical_variables(
  path = metadataDirectory,
  data.path = dataDirectory
)

#### Step 7. Set Geographic Coverage ####

geographicDescription <- "Parks within the National Park System"

# To generate from the data... Template geographic coverage

#template_geographic_coverage(
#  path = metadataDirectory,
#  data.path = dataDirectory,
#  data.table = 'nitrogen.csv',   # This will need to be edited
#  site.col = 'site_name',        # This will need to be edited
#  lat.col = 'site_lat',          # This will need to be edited
#  lon.col = 'site_lon'           # This will need to be edited
#)

#### Step 8. Set Taxonomic Coverage (Optional; May Not Be Appropriate) ####

# Template taxonomic coverage

#template_taxonomic_coverage(
#  path = metadataDirectory,
#  data.path = dataDirectory,
#  taxa.table = 'decomp.csv',         # This will need to be edited
#  taxa.col = 'taxa',                 # This will need to be edited
#  taxa.authority = c(3,11),          # This will need to be edited
#  taxa.name.type = 'scientific'      # This will need to be edited
#)

#### Step 9. Set Temporal Coverage ####
beginDate <- Sys.Date()
endDate <- Sys.Date()

#### Step 10. Create EML File ####
intellectual_rights<-readLines(paste0(metadataDirectory,"intellectual_rights.txt"),encoding="UTF-8")
themekeywords<-read.delim(paste0(metadataDirectory,"keywords.txt"))
themekeywords<-paste(themekeywords$keyword, collapse = ', ')
abstract<-params$packageAbstract
writeLines(abstract,paste0(metadataDirectory,"abstract.txt"))
methodstext<-paste0("Methods for the generation of this data set are documented in Data Release Report ",gsub("—","--",params$reportNumber), ", available at ",DataPublicationReportURL,".")
writeLines(methodstext,paste0(metadataDirectory,"methods.txt"))

#IF USING WINDOWS: before running 'make_eml', open all metadata.txt files in notepad ++ or equivalent text editor and convert to UTF-8 
#the abstract, methods, and potentially others default to UTF-8BOM during writing which is a windows specific unicode format and not compatible with UTF-8 readers. 
#this solves a troublesome error that will prevent you from being able to make EML files "Error in nchar(unlist(x$template[[i]])) : invalid multibyte string, element 1"

make_eml(
  path = metadataDirectory,
  data.path = dataDirectory,
  eml.path = emlDirectory,
  dataset.title = datapackageTitle, 
  temporal.coverage = c(as.Date(beginDate), as.Date(endDate)),
  maintenance.description = 'completed',
  data.table = paste0(fileprefix,packageRefID,"-data.csv"),
  data.table.description = datapackageDescription,
  data.table.url = packageURL,
  user.id = 'jcdevivo',
  user.domain = 'NPS-IMD',
  package.id = paste0(fileprefix,packageRefID,"-metadata")
)


### Zip up file

dir.create("output") #Just in case it's not there

zip::zipr(datapackagefilename,c(datafilename,metadatafilename), recurse=FALSE)
filelist<-zip_list(datapackagefilename)
files<-paste0(filelist$filename," (",filelist$uncompressed_size," bytes)")
timestamp<-as.character(file.info(datapackagefilename)$mtime)

# Create Manifest File

cat("Manifest file for ",fileprefix,params$dataPackage1RefID,"-datapackage.zip created on ",as.character(timestamp),file=manifestfilename,"\n",sep="")
for (i in 1:length(files)){
  cat(files[i],file=manifestfilename,"\n",sep="",append=TRUE)
}

### Add manifest to zip file

zip::zipr_append(datapackagefilename,manifestfilename, recurse=FALSE)