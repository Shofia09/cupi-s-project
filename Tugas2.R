#1. Buatlah data berbentuk vektor
Data <- c(Apel=2,Semangka=6,Mangga=12,Jeruk=14,Nanas=5)
Data
#SHOFIA NABILA AZZAHRA
#201810101084

#2. Buatlah matriks dengan ukuran 4 x 4 dengan menggunakan NIM masing-masing
A <- matrix(c(2,0,1,8,1,0,1,0,1,0,8,4,1,1,1,1),4,4, byrow = TRUE)
A
#SHOFIA NABILA AZZAHRA
#201810101084

#a. Tentukan invers dari matriks  A
Ai=solve(A)
print(Ai)
#SHOFIA NABILA AZZAHRA
#201810101084

#b. Operasi penjumlahan dan pengurangan matriks dengan invers matriks
#Penjumlahan
m=A+Ai
m
#Pengurangan
n=A-Ai
n
#SHOFIA NABILA AZZAHRA
#201810101084

#c. Tentukan diagonal matriks hasil operasi penjumlahan dan buat matriks diagonalnya. 
#Menentukan diagonal matriks m
Dl <- diag(m)
print(Dl)
#Membuat matriks diagonal Dl
Dl <- diag(diag(m))
Dl
#SHOFIA NABILA AZZAHRA
#201810101084

#3. Eksport data berupa excel dengan variabel “Nama”, “NIM”, dan “Hobby” dengan 
#   HeaderStyle sesuai kreativitas kalian dengan data 10 mahasiswa dalam 1 kelas. 
library(writexl)
NAMA=c("Shofia Nabila Azzahra","Vella Anggun Fitria","Sukma Lailatul Fadillah","Ayu Rosida","Dewi Puspasari","May Istiqomah","Riska Wahyuni","Putri Intan Sukma Wati","Feni Ayu Setyaningsih","Intan Erlina F")
NIM=c(201810101084,201810101023,201810101052,201810101077,201810101024,201810101004,201810101058,201810101056,201810101026,201810101043)
HOBBY=c("Menonton Film","Bersepeda","Memasak","Nonton oppa","Memasak","Crafting","Baca Wattpad","Menyanyi","Nonton Drama Korea","Olahraga")
tugas<-data.frame(NAMA,NIM,HOBBY)
tugas
library(openxlsx)
options("openxlsx.borderColour" = "black")
hs <- createStyle(
  textDecoration = "BOLD", fontColour = "black", fontSize = 12,
  fontName = "Times New Roman", fgFill = "green")
write.xlsx(tugas, file = "Datahobby.xlsx", colNames = TRUE, borders = "columns", headerStyle = hs)

#SHOFIA NABILA AZZAHRA
#201810101084