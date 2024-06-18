#PERTEMUAN 6
#MATRIKS

#1. Membuat Matriks
#Mendefinisikan matriks
matriks <- matrix(c(1,2,3,4),2,2)
matriks
a<-matrix(c(4,3,1,1,4,2,8,3),2,4)
a
matrix(c(2,4,5,2),nrow = 2,ncol = 2, byrow = FALSE)
#Mengecek apakah objek ini matriks atau bukan
is.matrix(a)
is.vector(a)

#2. Operasi Matriks
#Mendefinisikan matriks A dan B
A <- matrix(c(-2,3,-2,4,2,1),3,2)
print(A)
B <- matrix(c(1,-4,-2,-1,2,3),3,2)
print(B)
# Penjumlahan dan Pengurangan Matriks
D=A+B
D
E=A-B
E
# Perkalian Matriks Skalar
C1=A*2
C1
C2=B*3
C2
# Perkalian Matriks
F <- matrix(c(2,-2,1,2,3,1),2,3)
G <- A%*%F
G
# Transpose Matriks
H1=t(A)
H1
H2=t(B)
H2

#3. Macam-Macam Matriks
#MatrikS Satuan
U<-matrix(1,5,5)
U

# Matriks Nol
Z<-matrix(0,3,3)
Z

# Matriks Diagonal
#Mendefinisikan matriks S
S <- matrix(c(2,3,-2,1,2,2,4,2,3),3,3)
print(S)
#Mengambil elemen diagonal matriks S
Dl <- diag(S)
print(Dl)
#Membuat matriks diagonal Dl
Dl <- diag(diag(S))
Dl

# Matriks Identitas
I <- diag(c(1,1,1))
I

# Matriks Simetri
#Mendefinisikan matriks simetri K
K <- matrix(c(2,1,5,1,3,4,5,4,-2),3,3)
print(K)
# Transpose matriks K
KT <- t(K)
print(KT)

#4. Aljabar Linear Matriks
# Invers Matriks
#Mendefinisikan matriks A
A <- matrix(c(4,4,-2,2,6,2,2,8,4),3,3)
print(A)
#Menghitung invers matriks A
AI <- solve(A)
print(AI)
#Menunjukkan bahwa AI adalah invers dari A
print(A %*% AI)

# Determinan Matriks
#Mendefinisikan matriks A
A <- matrix(c(4,4,-2,2,6,2,2,8,4),3,3)
print(A)
#Menghitung determinan matriks A
d <- det(A)
print(d)

# Rank Matriks
#Mendefinisikan matriks A
A <- matrix(c(4,4,-2,2,6,2,2,8,4),3,3)
print(A)
#Menghitung rank matriks A
matA <- qr(A)
print(matA$rank)

#5. Baris dan Kolom pada Matriks
#Jumlah Baris dan Kolom Matriks
#mendefinisikan matriks A
A <- matrix(3,5,2)
print(A)
#Menghitung ukuran matriks A
ukuran_A <- dim(A)
print(ukuran_A)
#Menghitung jumlah baris matriks A
baris_A<-nrow(A)
print(baris_A)
#Menghitung jumlah kolom matriks A
kolom_A<-ncol(A)
print(kolom_A)

#Menghitung elemen Baris dan Kolom Matriks
#Mendefinisikan matriks A
A <- matrix(c(2,3,-2,1,2,2),3,2)
print(A)
#Menghitung rata-rata kolom matriks A
cm=colMeans(A)
print(cm)
#Menghitung rata-rata baris matriks A
rm=rowMeans(A)
print(rm)
#Menghitung rata-rata elemen matriks A
em=mean(A)
print(em)