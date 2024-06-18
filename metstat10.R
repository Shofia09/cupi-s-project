#PERTEMUAN 11
#WILDA KHOIRUNNISA 201810101048

#1. PELUANG SUATU KEJDIAN MENTOS KOIN
sample(c("K","E"),10,replace=TRUE)
toskoin10=sample(c("K","E"),10,replace=TRUE)
toskoin10
sum(toskoin10=="K")
sum(toskoin10=="E")
peluangK=sum(toskoin10=="K")/length(toskoin10)
peluangK
peluangE=sum(toskoin10=="E")/length(toskoin10)
peluangE

#2. PELUANG KEJADIAN SIMULASI GULING DADU
GulingDadu=sample(1:6,50,replace=TRUE)
GulingDadu
sum(GulingDadu==1)/length(GulingDadu)
sum(GulingDadu==2)/length(GulingDadu)
sum(GulingDadu==3)/length(GulingDadu)
sum(GulingDadu==4)/length(GulingDadu)
sum(GulingDadu==5)/length(GulingDadu)
sum(GulingDadu==6)/length(GulingDadu)

## Fungsi Pelemparan Dadu Sebanyak n Kali
Dadu=function(n)
{ sample(1:6,n,replace=TRUE)}
Dadu(5) ## Pelemparan Dadu 5 Kali
Dadu(15) ## Pelemparan 15 kali

#3. PELUANG MENGAMBIL BOLA DALAM KOTAK
kotak=c("B","B","M","M","M")
AmbilBola=sample(kotak,10,rep=T)
AmbilBola
sum(AmbilBola=="M")/length(AmbilBola)
sum(AmbilBola=="B")/length(AmbilBola)

#4. MENARIK KARTU POKER TANPA JOKER
kartu=paste(rep(c("A",2:10,"J","Q","K"),4),c("Hati","Diamond","Sekop","Club"))
AmbilKartu=sample(kartu,50,rep=T)
sum(AmbilKartu=="A Hati")/length(AmbilKartu)

#5. SIMULASI PELUANG SUATU KEJADIAN YANG TAK SEIMBANG
sample(c("K","K","E"),10,replace=TRUE)

#6. VARIABEL RANDOM
## Kejadian Munculnya Mata Dadu 5 Pada Pelemparan Dadu 10 Kali
Dadu=function(n)
{ sample(1:6,n,replace=TRUE)}
Dad5=Dadu(10)==5
x=length(Dad5[Dad5==TRUE])
x
Dad5
## Jika dilakukan sebanyak 100 kali
for (i in 1:99) {
Dad5=Dadu(10)==5
x5=length(Dad5[Dad5==TRUE]) 
x=c(x,x5)
}
x

#MENGHITUNG PELUANG
x ## kejadian munculnya mata dadu 5 pada pelemparan dadu 10 kali
p0=length(x[x!=0])/length(x)
p0 ##peluang munculnya mata dadu 5
p1=length(x[x=0])/length(x)
p1 ##peluang tidak munculnya mata dadu 5