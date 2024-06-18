#PERTEMUAN 1
#OPERATOR DAN FUNGSI DASAR PADA R

#OPERATOR
#1. OPERATOR PENUGASAN / PENJELAS (= ; <- ; ->)
x=12
y<-3
5->z

#2. OPERATOR ARITMATIKA (+ ; - ; * ; / ; ^ ; %% ; %/%)
#PENJUMLAHAN
5+3
2+9
(-2)+5
5+(-7)

#PENGURANGAN
6-2
8-(-2)
(-3)-2

#PERKALIAN
5*2
8*3

#PEMBAGIAN
15/3
72/8

#PERPANGKATAN
2^3
5^5

#MODULUS
5%%2
16%%6

#INTEGER
12%/%5
124%/%13

#3. OPERASI PERBANDINGAN (== ; != ; < ; > ; <= ; >=)
5==2
2!=3
4<1
6>2
4>=4
8<=3

a<-4
b<-7
a==b
a!=b
a<b
a>b
a>=b
a<=b

#4. OPERASI LOGIKA (&& ; || ; ! ) ==>
#KONJUNGSI (AND=>&&)
a<=5 && b>=6
a<=6 && b>=5
a<=2 && b>=6
a<=3 && b>=4

#DISJUNGSI (OR=>||)
a<=5 || b>=6
a<=6 || b>=5
a<=2 || b>=6
a<=3 || b>=4

#NEGASI (NOT=>!)
!a<=5
!b<=5
!a<=2
!b<=4


#FUNGSI DASAR
abs(-3)
sign(5)
sign(-4)
factorial(5)

#FUNGSI EKSPONENSIAL DAN ALGORITMA
sqrt(25)
exp(6)
log(2)

#FUNGSI TRIGONOMETRI
sin(46)
cos(23)
tan(64)
sinh(21)
cosh(15)

#FUNGSI PEMBULATAN
round(2.4)
round(3.6)
floor(7.6)
ceiling(5.2)

#VEKTOR
A <- c(1,2,3,4,5)
A[1]
a <- 1:10
a
B <- seq(from = 1, to = 10)
B
b <- seq(from = 1, to = 10, by = 2)
b
C <- seq(from = 1, to = 10, length.out = 7)
C
c <- seq(from = 1, to = 10, along.with = 1:4)
c
H <- rep(1:3,each=5)
H

#FACTOR
fc <- factor(c("mantap","banget","banget","biasa","banget","biasa"))
print.default(fc)

#MATRIX
matrix(a) #default
matrix(a,ncol = 5)
matrix(a, ncol = 5, byrow = TRUE)