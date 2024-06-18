#PERTEMUAN 13
# OPERASI HIMPUNAN, PERMUTASI, DAN KOMBINASI

#A. OPERASI HIMPUNAN
#1. Irisan
A=c(1,2,3)
B=c(2,3,4,5,6)
intersect(A,B)

#2. Gabungan
union(A,B)

#3. Kombinasi antara Irisan dan Gabungan
A=c(1,2,3)
B=c(2,3,4,5,6)
C=c(3,4,5,6,7,8,9)
union(A,union(B,C))
intersect(A,intersect(B,C))
intersect(A,union(B,C))
union(intersect(A,C), intersect(B,C))

#4. Faktorial
z=c(1,2,3,4)
prod(z)
factorial(4)
#atau
a=5
b=6
c=10
factorial(a)
factorial(b)
factorial(c)


#B. Permutasi
factorial(4)/factorial(4-2)
a=4
b=2
factorial(a)/factorial(a-b)


#C. Kombinasi
choose(8,4)
a=8
b=4
factorial(a)/(factorial(a-b)*factorial(b))
#contoh soal
# Suatu perlombaan akan dipilih 3 orang finalis terbaik secara acak.
# Banyak cara pemilihan dari 5 finalis tersebut?
choose(5,3)
