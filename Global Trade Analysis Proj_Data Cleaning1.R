getwd()
setwd("S:/Learning/Data Science/ProSchool/Term 2/Tableau Project/Project July19")

install.packages("readxl") #to read Excel file#
install.packages("xlsx")
install.packages("writexl") #to copy file from R to Excel#
install.packages("Amelia")
install.packages("plotly")
install.packages("ggplot2")
install.packages("psych")
install.packages("mlbench")
install.packages("corrplot")
install.packages("caret")
install.packages("plotly")
install.packages("caTools")
install.packages("reshape2")
install.packages("dplyr")
install.packages("mice")
install.packages("Hmisc")

library (readxl) 
library (xlsx)
library (writexl) 
#library (Amelia)
#library (plotly)
#library (ggplot2)
#library (psych)
#library (mlbench)
#library (corrplot)
#library (caret)
#library (plotly)
#library (caTools)
#library (reshape2)
#library (dplyr)
#library (mice)
#library (Hmisc)
md.pattern(GTA_Data_NoZ)


GTA_Data<-read_excel("Dataset_Int_business.xlsx") # Import file into R from Excel
dim(GTA_Data)
objects(GTA_Data)
str(GTA_Data)
summary(GTA_Data)
GTA_Data

missmap(GTA_Data,col=c('blue','grey'),y.at=1,y.labels='',legend=TRUE) # Check for Zero & Null
md.pattern(GTA_Data)

class(GTA_Data) # Convert table to data set in R

GTA_Data_NoZ<- GTA_Data

GTA_Data_NoZ<- GTA_Data_NoZ[!is.na(GTA_Data_NoZ$weight_kg) & !is.na(GTA_Data_NoZ$quantity),] # Remove all the null values
GTA_Data_NoZ

GTA_Data_NoZ<-GTA_Data_NoZ[-row(GTA_Data_NoZ)[GTA_Data_NoZ==0],] # remove all the "0" value records
dim(GTA_Data_NoZ) # check the No.records after removing Zero Values
write.csv(GTA_Data,"GTA_Data.cvs") # writing the file to .CSV
write.csv(GTA_Data_NoZ,"GTA_Data_NoZ.cvs") # writing the file to .CSV


write_xlsx(x = GTA_Data, path = "GTA_Data.xlsx", col_names = TRUE) # writing the file to .Xlsx
write_xlsx(x = GTA_Data_NoZ, path = "GTA_Data_NoZ.xlsx", col_names = TRUE) # writing the file to .Xlsx
dim(GTA_Data)
dim(GTA_Data_NoZ)
md.pattern(GTA_Data_NoZ)

