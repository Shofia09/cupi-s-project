#SHOFIA NABILA AZZAHRA
#201810101084
# 1
library(readr)
data <- read.csv(file = "Tingkat_Pemahaman.csv")
data

#SHOFIA NABILA AZZAHRA
#201810101084
# b
##membuat model regresi berganda
modelreg <- lm(Tingkat_Pemahaman ~ Nilai_Tugas + Nilai_UAS, data = data)
## koefisien model regressi berganda
modelreg$coefficients
## nilai sales hasil prediksi model
modelreg$fifted.values
##nilai sales observasi - sales hasil prediksi model
modelreg$residuals
## confident interval (uji parsial)
confint.lm(modelreg, level=0.95)
## plot model
par(mfrow=c(2,2))
plot(modelreg)

#SHOFIA NABILA AZZAHRA
#201810101084
# c
## uji F (melihat signifikansi keseluruhan model)
anova(modelreg)

#SHOFIA NABILA AZZAHRA
#201810101084
# 2.
library(TeachingDemos)
n=200
rata=61.8
ragam=sqrt(7.9)
ragam
mu=60
z=(rata-mu)/(ragam/sqrt(n))
z
z.test(rata,.u=60,ragam,alternative="two.sided",n-n,conf.level=0.95)

#SHOFIA NABILA AZZAHRA
#201810101084
#3. MEMBUAT DATAFRAME
data_daerah <- c("JAKARTA","TANGERANG","BEKASI","BOGOR","BANDUNG","SEMARANG","SOLO","YOGYA","SURABAYA",
                 "PURWOKERTO","MADIUN","TUBAN","MALANG","KUDUS","PEKALONGAN")
data_sales <- c(205,206,254,246,201,291,234,209,204,216,245,286,312,265,322)
data_promosi <- c(26,28,35,31,21,49,30,30,24,31,32,47,54,40,42)
data_outlet <- c(159,164,198,184,150,206,184,154,149,175,192,201,248,166,287)
df <- data.frame(data_daerah, data_sales, data_promosi, data_outlet)
df

#SHOFIA NABILA AZZAHRA
#201810101084
#a. Membuat ringkasan data
summary(data_daerah)
summary(data_sales)
summary(data_promosi)
summary(data_outlet)

#SHOFIA NABILA AZZAHRA
#201810101084
#c. Mencari varians tiap variabel numeric
var(data_sales)
var(data_promosi)

