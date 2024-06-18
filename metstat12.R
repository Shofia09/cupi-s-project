#PERTEMUAN 14
#UJI HIPOTESIS

#1. UJI Z
#Contoh 1
install.packages("TeachingDemos")
library(TeachingDemos) #library untuk membangkitkan paket
# Uji Nilai Tengah Satu Populasi
# Contoh 1
Tinggi<-c(185,150,156,171,160,160,165,171,166,150)
z.test(Tinggi,mu=160,20,alternative="two.sided",n=length(Tinggi), conf.level=0.95)
  #20 itu ragam
# Contoh 2
#Suatu sample acak terdapat 100 data kematian dimana rata-ratanya menunjukkan 
#71.8 tahun dan ragamnya 8.9. Apakah hal ini menunjukkan jika harapan umur 
#sekarang lebih dari 70 tahun (taraf nyata=5%)
n=100
rata=71.8
ragam=8.9
mu=70
z=(rata-mu)/(ragam/sqrt(n)) #cara manual
z
z.test(rata,mu=70,8.9,alternative="two.sided",n=n,conf.level=0.95)


#2. UJI F 
library(readxl)
data<- read_excel(choose.files(), col_names = TRUE)
data
## Membuat model Regresi Berganda
modelreg<-lm(Sales ~ Promosi +Outlet,data = data)
## Koefisien Model Regresi Berganda
modelreg$coefficients
## Nilai Sales Hasil Prediksi Model
modelreg$fitted.values
## Nilai Sales observasi - Sales hasil prediksi model
modelreg$residuals
## Uji F (Melihat signifikansi keseluruhan model)
anova(modelreg)
## Confident Interval (Uji Parsial)
confint.lm(modelreg, level=0.95)
## plot model
par(mfrow=c(2,2))
plot(modelreg)
## Ringkasan hasil model
summary(modelreg)

# Terapkan pada data baru
## Prediksi nilai sales pada data baru
## import newdata.csv
library(readr)
newdata <- read.table("newdata.csv", sep=";", header = TRUE)
View(newdata)
## melakukan prediksi
salesPredik <- predict.lm(modelreg,newdata,type="response")
## Tampilan prediksi
salesPredik
## menggabungkan hasil predik dengan newdata
newdata2 <- data.frame("Daerah = newdata$Daerah, "Salespredik"=salesPredik,
			     "Promosi" = newdata$Promosi, "Outlet" = newdata$Outlet)
## membuat newdata.csv
write.table(newdata2, file = "uji Z dan F newdata2.csv", row.names = FALSE, sep = ";")
## baca dan melihat data yang taleh dbuat
newdata2 <- read.table("uji Z dan F newdata2.csv, sep=";",header = TRUE)
View(newdata2)