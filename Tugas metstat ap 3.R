# SHOFIA NABILA AZZAHRA
# 201810101084
#a. 
#Buat Data Frame
Nama=c("Lucian","Amela","Siofra","Keliana","Cybelle","Nohea","Epione","Farren","Luce","Peitho","Photine","Asha","Zeota","Citlali","Mairin","Sylvaine","Faolan","Amate","Marmoris","Annasach","Elsiyan","Atelier")
Jenis_kelamin=c("Male","Female","Female","Female","Female","Male","Female","Male","Male","Male","Male","Female","Male","Female","Female","Female","Male","Male","Male","Male","Female","Female")
Pengurus_aktif=c("Spora","Alpha","Titik","Ions","BEM","Palapa","Himabio","Himabio","Spora","Himaki","Himatika","Titik","Alpha","BPM","Palapa","BEM","Himaki","Himatika","Himafi","Himafi","Ions","BPM")
Jumlah_Kegiatan_Aktif=c(3,4,2,5,2,1,3,4,2,5,4,2,2,3,4,1,1,3,4,3,4,2)
GPA=c(3.00,2.88,3.20,3.14,2.79,3.00,3.44,3.50,3.05,3.17,3.22,3.36,3.03,3.26,2.90,3.48,3.00,3.98,2.95,3.67,3.45,3.12)
df<-data.frame(Nama,Jenis_kelamin,Pengurus_aktif,Jumlah_Kegiatan_Aktif,GPA)
df

# SHOFIA NABILA AZZAHRA
# 201810101084
#Hitung Manual di R
#Jumlah Kegiatan Aktif
mean(Jumlah_Kegiatan_Aktif)
median(Jumlah_Kegiatan_Aktif)
#modus(Jumlah_Kegiatan_Aktif)= 2 dan 4
range(Jumlah_Kegiatan_Aktif)
var(Jumlah_Kegiatan_Aktif)
sd(Jumlah_Kegiatan_Aktif)

# SHOFIA NABILA AZZAHRA
# 201810101084
#GPA
mean(GPA)
median(GPA)
#modus(GPA)= 3.00
range(GPA)
var(GPA)
sd(GPA)

# SHOFIA NABILA AZZAHRA
# 201810101084
#Hitung Fungsi Bawaan R (Summary/Summarise)
summary(df)

# SHOFIA NABILA AZZAHRA
# 201810101084
#b. 
#Buat Barplot
# Jenis Kelamin
df1<-data.frame(Jenis_kelamin)
df1
tabel1<-table(df1)
tabel1
par(mfrow=c(1,2))
barplot(tabel1, main="Data Jenis Kelamin Mahasiswa", xlab="Jenis Kelamin", 
	 ylab="Jumlah Mahasiswa", sub="ShofiaNA_201810101084", col=c("purple",
	 "lightblue"),legend=rownames(tabel1), beside=T)

# Jumlah Kegiatan Aktif
df2<-data.frame(Jumlah_Kegiatan_Aktif)
df2
tabel2<-table(df2)
tabel2
barplot(tabel2, main="Data Kegiatan Aktif Mahasiswa", xlab="Jumlah Kegiatan Aktif", 
	 ylab="Jumlah Mahasiswa", sub="ShofiaNA_201810101084", col=c("blue","purple",
	 "lightblue","green","red"),legend=rownames(tabel2), beside=T)

# Pengurus Aktif
df3<-data.frame(Pengurus_aktif)
df3
tabel3<-table(df3)
tabel3
barplot(tabel3, main="Data Pengurus Aktif Mahasiswa", xlab="Pengurus Aktif", 
	 ylab="Jumlah Mahasiswa", sub="ShofiaNA_201810101084", col=c("blue","purple",
	 "lightblue","green","red","grey"),legend=rownames(tabel3), beside=T)

# GPA
df4<-data.frame(GPA)
df4
tabel4<-table(df4)
tabel4
barplot(tabel4, main="Data GPA Mahasiswa", xlab="GPA", ylab="Jumlah Mahasiswa", 
	 sub="ShofiaNA_201810101084", col=c("blue","purple","lightblue","green",
	 "red","grey"))

# SHOFIA NABILA AZZAHRA
# 201810101084
#Buat Tabel Contingency
Jenis_kelamin=c("Male","Female","Female","Female","Female","Male","Female","Male","Male","Male","Male","Female","Male","Female","Female","Female","Male","Male","Male","Male","Female","Female")
Pengurus_aktif=c("Spora","Alpha","Titik","Ions","BEM","Palapa","Himabio","Himabio","Spora","Himaki","Himatika","Titik","Alpha","BPM","Palapa","BEM","Himaki","Himatika","Himafi","Himafi","Ions","BPM")
dft<-data.frame(Jenis_kelamin,Pengurus_aktif)
dft
ftable(dft)

# SHOFIA NABILA AZZAHRA
# 201810101084
#c.
n<-12
xbar <- 42
stdev <- 11.9
cat('rata-rata=' ,xbar)
cat('standar deviasi=' ,stdev)
#Perhitungan Uji
stat_uji <- (xbar-50)/(stdev/sqrt(n))
cat('t= ',stat_uji)
#Perhitungan Daerah Krisis
pval <- pt(stat_uji,df=n-1)
cat('p-value= ',pval)

# SHOFIA NABILA AZZAHRA
# 201810101084
#d.
kartu=paste(rep(c("Hitam","Merah"),26))
AmbilKartu=sample(kartu,52,rep=T)
sum(AmbilKartu=="Hitam")/length(AmbilKartu)
