#Install the reticulate Package
install.packages("reticulate")

#Load the reticulate Package
library(reticulate)

#Configure Python Environment
#use_python("/usr/bin/python3")

#Using a Virtual Environment:
use_virtualenv("/Users/linaruiz/Documents/EpidemicKabuR/venv")

# Check the Python configuration
py_config()

# Install epidemickabu in the Python environment
py_install("epidemickabu")

# Import the Python package
ek <- import("EpidemicKabu")

# The dataframe with the columns dates and cases by date
database = read.csv("/Users/linaruiz/Documents/EpidemicKabu_project/EpidemicKabuLibrary/examples/data/uncoverCountries.csv")
database = database[,c("Date_reported","Country_code","Country","New_cases")]
databaseCOLOMBIA=database[database$"Country_code"=="CO",]
datesName = "Date_reported"
casesName = "New_cases"

# the names of the output files
plotNameW = "Epidemic_curve_Colombia_W"
dfNameW = "Epidemic_curve_Colombia_W"
plotNamePV = "Epidemic_curve_Colombia_PV"
dfNamePV = "Epidemic_curve_Colombia_PV"

#Be sure to create the "./plots/" and "./dataframes" folder in the same folder in which you
#are running the code, or define the variables to set an specific directory
outFolderPlot= "/Users/linaruiz/Documents/EpidemicKabuR/plots/"
outFolderDF= "/Users/linaruiz/Documents/EpidemicKabuR/dataframes/"

# kernels
kernel1=35
kernel2=30

# waves
example = ek$waves(databaseCOLOMBIA,datesName,casesName,kernel1,kernel2,plotNameW,dfNameW)
example$run()

# peak
example = ek$peaksValleys(databaseCOLOMBIA,datesName,casesName,kernel1,kernel2,plotNamePV,dfNamePV)
example$run()
