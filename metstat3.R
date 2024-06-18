#PERTEMUAN 3
#STATISTIKA DESKRIPTIF

#UKURAN PEMUSATAN DATA
data<-c(12,22,13,24,350,67,72,81,89,10,121,132,313,147,155,169,127,118,109,230)
data
length(data)
sort(data)

#1. RERATA
mean=sum(data)/length(data)
mean
mean(data)
#2. NILAI TENGAH
median(data)
#3. NILAI MINIMUM DAN MAKSIMUM
min(data)
max(data)

#UKURAN PENYABARANN DATA
#1. RANGE
range(data)
#2. VARIANS
var(data)
#3. STANDARD DEVIASI
sd(data)

#Menentukan kuartil
quantile(data)#kuartil



#LATIHAN
#menggunakan data frame tentukan nilai minimal, kuartil 1,median,
#mean, kuartil 3 dan nilai maksimumnya.
tinggi_badan=c(165,160,165,162,157,162,153,161,155,160)
berat_badan=c(48,47,56,60,51,60,54,61,49,55)
umur=c(22,18,25,22,25,28,18,19,21,20)
df<-data.frame(tinggi_badan,berat_badan,umur)
df

#1. Nilai Minimal
min(tinggi_badan)
min(berat_badan)
min(umur)

quantile(tinggi_badan)
quantile(berat_badan)
quantile(umur)

#2. Kuartil 1
#Kuartil 1 tinggi badan=157,75
#Kuartil 1 berat badan=49,5
#Kuartil 1 umur=19,25

#3. Kuartil 3
#Kuartil 3 tinggi badan=162
#Kuartil 3 berat badan=59
#Kuartil 3 umur=24,25

#4. Median
median(tinggi_badan)
median(berat_badan)
median(umur)

#5. Mean
mean(tinggi_badan)
mean(berat_badan)
mean(umur)

#6. Nilai Maksimum
max(tinggi_badan)
max(berat_badan)
max(umur)

summary(df)



#install package pastecs
install.packages("pastecs")
library(pastecs)
stat.desc(data)
stat.desc(df)
