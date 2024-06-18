#PERTEMUAN 4
#VEKTOR

#1. MEMBUAT VEKTOR
# membuat vektor numerik
vektor <- c(12,17,16,8,10,18,0.7)
vektor
# membuat vektor karakter
data <- c("buku","bolpoin","pensil","penggaris")
data
# membuat vektor logical
a <- c("TRUE","FALSE", "TRUE","TRUE)
a
# membuat vektor jumlah data
data <- c("buku","bolpoin","pensil","penggaris")
data
Jumlah <- c(3,5,2,1)
names(Jumlah) <- c("buku","bolpoin","pensil","penggaris")
Jumlah
#Cara lain
Data <- c(buku=3,bolpoin=5,pensil=2,pengaris=1)
Data

#2. MISSING VALUE (NE-Not Available)
Jumlah <- c(buku=NA,bolpoin=5,pensil=2,penggaris=1)
Jumlah
is.na(Jumlah)
Data <- c(buku=NA,bolpoin=5,pensil=NA,penggaris=1)
Data
is.na(Data)


#3. SUBSET PADA VEKTOR
# Positive indexing
Data<- c(buku=3,bolpoin=5,pensil=2,penggaris=1)
# Subset vektor pada urutan kedua
Data[2]
# Subset vektor pada urutan 2 dan 4
Data[c(2,4)]
Data["buku"]
Data["penggaris"]

# Negative indexing
Data <- c(buku=3,bolpoin=5,pensil=2,pengaris=1)
# Mengecualikan elemen vektor 2 dan 4
Data[-c(2,4)]
# Mengecualikan elemen vektor 1 dan 3
Data[-c(1,3)]
# Subset untuk elemen vektor bukan missing value
Jumlah <- c(buku=NA,bolpoin=5,pensil=2,penggaris=1)
Jumlah[!is.na(Jumlah)]


#4. OPERASI VEKTOR
beli <- c(buku=3,bolpoin=5,pensil=2,pengaris=1)
harga <- c(3000, 2000, 1500, 2000)
names(harga) <- c("Buku", "Bolpoin", "Pensil", "Penggaris")
harga
# mengalikan dengan harga
beli <- c(3,5,2,1)
bayar=harga*beli
bayar


#5. MEMBUAT DERET ANGKA
# vektor bernilai 1 s/d 20
1:20
# vektor bernilai 10 s/d -1
10:-1
# membuat vektor bernilai 0 s/d 14
n = 15
1:n-1
# membuat vektor bernilai 1 s/d 9
m = 10
1:(m-1)
# menggunakan fungsi seq
seq(from=2,to=10,by=0.5)


#6. NILAI BERULANG
# cetak angka 2 sebanyak 5 kali
rep(x=2,times=5)
# cetak angka 2 dan 6 sebanyak 3 kali
rep(c(2,6),times=3)
# cetak angka 3 dan 6 masing-masing 3 kali
rep(c(3,6),each=3)
# cetak angka 2 dan 4 sebanyak 4 kali masing-masing 2 kali
rep(c(2,4),times=4,each=2)

