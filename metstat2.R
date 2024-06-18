# TIPE DAN STRUKTUR DATA PADA R

#TIPE DATA PADA R
#1. LOGIKA
x<- FALSE
y<- TRUE
class(x)
class(y)

#2. NUMERIK
a<-10
b<-12
class(a)
class(b)

#3. INTEGER
c<-2L
class(c)

#4. KOMPLEKS
p<-2+2i
q<-1i
class(q)

#5. KARAKTER
r<-"saya"
s<-c("suka","matematika")
class(r)
class(s)

#STRUKTUR DATA PADA R
#1Dimensi
#HOMOGEN
#Atomik Vektor
#1. Karakter
hari<-c("Senin","Selasa","Rabu")
class(hari)
#2. Kompleks
kompleks<-c(1+2i,2+1i,2i)
class(kompleks)
#3. Numerik
numerik<-c(6,2,100)
class(numerik)
#4. Integer
integer<-c(2L,3L)
class(integer)
#5. Logika
logika<-c(TRUE,FALSE)
class(logika)

#HETEROGEN
#List
list1 <- list("man", "women", c(10,12,21), TRUE, FALSE, 119.1)
list1
class(list1)
#Mengeluarkan elemen ke-2 dan 3 dari list1
list1[2:3]
#Mengeluarkan elemen ke-1 dari elemen ke-3 dari list1
list1[[3]][1]
#Mencari panjang list
length(list1)

#2Dimensi
#HOMOGEN
#Matriks
matrix(a) #default
matrix(a,ncol = 5)
matrix(1:12,3,4)
matrix(1:12,3,4,byrow=TRUE)

#HETEROGEN
#Data Frame
jenis_kelamin=c("P","P","L","L","L","P")
tinggi_badan=c(155,160,165,162,157,162)
berat_badan=c(48,47,56,60,51,60)
umur=c(22,18,25,22,25,28)
df<-data.frame(jenis_kelamin,tinggi_badan,berat_badan,umur)
df
names(df)
#Melihat nama variabel
str(df)

#3Dimensi
#HOMOGEN
#Array
#Membuat array 3 dimensi
array1 <- array(LETTERS,dim=c(2,2,3))
array1
#Membuat array 4 dimensi
array(c("A","B"),dim=c(2,1,2,3))
#Membuat array 2 dimensi
array(1:12,dim=c(3,4))
matrix(1:12,3,4)
#Mengakses array
array1
array1[1,2,1]
array1[2,2,2]



#1. Buat dataframe satu kelas mengenai tingkat pemahaman
#   terhadap materi praktikum metode statistika
nama=c("Alya novia nurazizah","Angga Wira Maulana","Arifatul Fitriyah","Ayu Rosida","Devi Rahmawati Firnanda","Devina Agustin","Dewi Puspasari","Dok Sakinah","Durratul Sayyidah Adilah Munawaroh","Dwi Nur Aini","Ela Andora","Essa Hakim Ramadhani","FARAH FARIDATUL BASYIROH","Fathya Fathin Illaningtiyas","Feni Ayu Setyaningsih","Gaby Estella Renancy","Gohan Lasuli Silvia","Hanif Faishal","Intan Erlina F","Jenni Alfa Nanda Arianti","Khafidha Nur Arifin","Maulidya Nur Shafira","May Istiqomah ","Mia Audina Aprilyawati","Muhammad Fahmil Fakih","MUHAMMAD IMRON ROSYADI","Munipatun Napisah","NAILA ILMI AMALIYA","Putri Fuzna Awanisa","PUTRI INTAN SUKMA WATI","Riska Wahyuni","Shellyma Herita","Shofia Nabila Azzahra","Siti Nur Khasanah","Sukma Lailatul Fadillah","Ulfie Sakha Aulasya","Vella Anggun Fitria","Wilda Khoirunnisa","Yuniarti Permatasari")
NIM=c(201810101055,201810101111,201810101068,201810101077,201810101018,201810101047,201810101024,201810101012,201810101028,201810101051,201810101067,201810101029,201810101103,201810101119,201810101026,201810101113,201810101092,201810101069,201810101043,201810101094,201810101062,201810101064,201810101004,201810101001,201810101053,201810101037,201810101093,201810101049,201810101117,201810101056,201810101058,201810101075,201810101084,201810101083,201810101052,201810101098,201810101023,201810101048,201810101085)
tingkat_pemahaman=c(85,80,60,95,90,80,80,75,70,89,90,91,70,50,90,79,80,80,50,80,70,75,85,90,90,50,70,70,90,85,80,85,75,70,90,80,90,70,90)
tg<-data.frame(nama,NIM,tingkat_pemahaman)
tg
names(tg)
