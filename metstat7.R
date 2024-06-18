# PERTEMUAN 8
#VISUALISASI DATA

#1. plot()
x <- c(1:10); y <- x^2 #Membuat vector data
par(mfrow=c(2,4)) #Membuat jendela grafik (dalam hal ini menjadi 2 baris 4 kolom)
plot(x,y,type="p",main=paste("type p"))
plot(x,y,type="l",main=paste("type l"))
plot(x,y,type="o",main=paste("type o"))
plot(x,y,type="b",main=paste("type b"))
plot(x,y,type="h",main=paste("type h"))
plot(x,y,type="s",main=paste("type s"))
plot(x,y,type="n",main=paste("type n"))

#2. Bar plot
par(mfrow=c(1,3))
VADeaths
barplot(VADeaths[, "Rural Male"],main="a")
barplot(VADeaths[, "Rural Male"],main="b",border="steelblue")
barplot(VADeaths[, "Rural Male"],main="c",border="steelblue",col=c("red","yellow","orange","grey","green"))
barplot(VADeaths,main="a")
barplot(VADeaths,main="a",col=c("red","yellow","orange","grey","green"),legend=rownames(VADeaths))
barplot(VADeaths,main="a",col=c("red","yellow","orange","grey","green"),legend=rownames(VADeaths),beside=T)

#3. Histogram
trees
hist(trees$Height)
dens <- density(trees$Height)
plot(dens)
hist(trees$Height,freq=F,col="steelblue")
polygon(dens,border="red",col="yellow")
#cara lain
hist(trees$Height,xlab="trees$Height",ylab="Density",
     main="Histogram dari data trees$Height",
     density=15,col="blue")

#4. Box plot
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length~iris$Species)
boxplot(iris$Sepal.Length~iris$Species,border="orange",col=c("blue","steelblue","lightblue"))

#5. DIAGRAM LINGKARAN
cars <- c(1, 3, 6, 4, 9)
pie(cars, main="Automobile",col=rainbow(length(cars)),
    labels=c("Toyota","Honda","Isuzu","Flat","BMW"))

#6. DIAGRAM DAHAN DAUN
nilai.matematika<-c(72,62,54,87,67,58,77,89,97,64)
stem(nilai.matematika)
nilai.fisika<-c(72,65,66,86,72,56,79,80,89,56)
stem(nilai.fisika)