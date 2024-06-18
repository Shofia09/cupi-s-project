install.packages("readr")
install.packages("readxl")
install.packages("writexl")
install.packages("openxlsx")


# PERTEMUAN 7
# IMPORT DAN EKSPORT DATA

#1. Textfile(.txt)
library(readr)
data.txt1 <- read.delim(choose.files())
data.txt1
data.txt2 <- read.delim(file = "NilaiStat.txt")
data.txt2

#2. CSV (.csv)
data.csv1 <- read.csv(file = "NilaiStat.csv")
data.csv1
data.csv2 <- read.csv(choose.files())
data.csv2

#3. Excel
library(readxl)
Nilaistat1 <- read_excel("NilaiStat.xlsx")
Nilaistat1
data_x1 <- read_excel(choose.files(), col_names = TRUE)
data_x1


#membuat data excel
library(writexl)
No=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
TB=c(165,160,165,162,157,162,153,161,155,160,155,165,154,160,158)
BB=c(48,47,56,60,51,60,54,61,49,55,60,54,57,62,66)
Umur=c(22,18,25,22,25,28,18,19,21,20,21,19,19,23,25)
df<-data.frame(No,TB,BB,Umur)
df
library(openxlsx)
options("openxlsx.borderColour" = "black")
hs <- createStyle(textDecoration = "Bold", fontColour = "black", fontSize = 12, fontName = "Arial Narrow", fgFill = "yellow")
write.xlsx(df, file = "DataSiswa.xlsx", colNames = TRUE, borders = "columns", headerStyle = hs)
