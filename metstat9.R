# PRAKTIKUM 10
# PENGUJIAN HIPOTESIS UJI T

# UJI T SATU SAMPEL
data <- c(175, 190, 215, 198, 184, 207, 210, 193, 196, 180)
xbar <- mean(data)
stdev <- sd(data)
cat('rata-rata =', xbar)
cat('standar deviasi =', stdev)
# Perhitungan Uji T
stat_uji <- (xbar-200)/(stdev/sqrt(length(data)))
cat('t = ',stat_uji)
# Perhitungan daerah kritis
pval <- pt(stat_uji, df=length(data)-1)
cat('p-value = ', pval)

# cara lain
library(readxl)
uji1sampel<- read_excel(choose.files(), col_names = TRUE)
uji1sampel
names(uji1sampel)
attach(uji1sampel)
boxplot(Total.Nilai)
t.test(Total.Nilai, mu=135, alternative = "less",conf.level = 0.95)


# UJI T DUA SAMPEL
Mesin.baru<- c(42.1, 41.3, 42.4, 43.2, 41.8, 41.0, 41.8, 42.8, 42.3, 42.7)
Mesin.lama<- c(42.7, 43.8, 42.5, 43.1, 44.0, 43.6, 43.3, 43.5, 41.7, 44.1)
data1<-data.frame(Mesin.baru,Mesin.lama)
data1
names(data1)
attach(data1)
t.test(Mesin.baru,Mesin.lama)

# cara lain
library(readxl)
uji2sampel<- read_excel(choose.files(), col_names = TRUE)
uji2sampel
names(uji2sampel)
attach(uji2sampel)
boxplot(Nilai.Matematika,Nilai.Biologi)
t.test(Nilai.Matematika,Nilai.Biologi, var.equal = F, conf.level = 0.95)
