# PRAKTIKUM 9
# VISUALISASI LANJUTAN

# Kustomisasi Parameter Grafik
# 1. Menambahkan Judul
# langsung/didalam plot
barplot(c(2,6),main="Judul",xlab="Judul x",ylab="Judul y",sub="Sub-Judul")
barplot(c(2,6),main="Judul",xlab="Judul x",ylab="Judul y",sub="Sub-Judul",
        col.main="red",col.lab="blue",col.sub="orange",
        font.main=3,font.lab=2,font.sub=4,
        cex.main=2,cex.lab=1,cex.lab=1.5)
# diluar plot
barplot(c(2,4,8))
title(main="Judul",xlab="Judul x",ylab="Judul y",sub="Sub-Judul",
        col.main="red",col.lab="blue",col.sub="orange",
        font.main=3,font.lab=2,font.sub=4,
        cex.main=2,cex.lab=1,cex.lab=1.5)

# 2. Menambahkan Legend
x <- c(1:10)
y <- x^2
z <- x*2
plot(x,y,type="o",col="red",lty=1)
lines(x,z,type="o",col="blue",lty=2)
legend(1,95,legend=c("Line 1","Line 2"),col=c("red","blue"),lty=1:2)

plot(x,y,type="o",col="red",lty=1)
lines(x,z,type="o",col="blue",lty=2)
legend(1,95,legend=c("Line 1","Line 2"),col=c("red","blue"),lty=1:2,
	 title="Legend",text.font=4,bg="lightblue")

plot(x,y,type="o",col="red",lty=1)
lines(x,z,type="o",col="blue",lty=2)
legend(1,95,legend=c("Line 1","Line 2"),col=c("red","blue"),lty=1:2,
	 title="Legend",text.font=4,bg="yellow",
	 box.lty=2,box.lwd=3,box.col="blue")

plot(x,y,type="o",col="red",lty=1)
lines(x,z,type="o",col="blue",lty=2)
legend("topright",legend=c("Line 1","Line 2"),col=c("red","blue"),lty=1:2,
	 title="Legend",text.font=4,bg="yellow",
	 box.lty=2,box.lwd=3,box.col="blue")

plot(x,y,type="o",col="red",lty=1)
lines(x,z,type="o",col="blue",lty=2)
legend("topleft",legend=c("Line 1","Line 2"),col=c("red","blue"),lty=1:2,
	 title="Legend",text.font=4,bg="yellow",
	 box.lty=2,box.lwd=3,box.col="blue")

plot(x,y,type="o",col="red",lty=1)
lines(x,z,type="o",col="blue",lty=2)
legend("top",legend=c("Line 1","Line 2"),col=c("red","blue"),lty=1:2,
	 title="Legend",text.font=4,bg="yellow",
	 box.lty=2,box.lwd=3,box.col="blue")

#3. menambahkan text
#akan ditandai observasi yang bernilai
#mpg < 15 dan wt >5
d <- mtcars[mtcars$wt >= 5 & mtcars$mpg <= 15, ]
plot(mtcars$wt,mtcars$mpg,main="Milas vs car weight",xlab="weight",ylab="miles/(US) gallon")
text(d$wt,d$mpg,row.names(d),cex=0.65,pos=3,col="red")
#
plot(1:10, 1:10, main="contoh")
text(4, 9,expression(contoh1))
text(7, 4,expression(contoh2))

# 4. Merubah simbol plot
par(mfrow=c(2,2))
plot(1:5, 1:5, main="Simbol 0",pch=0)
plot(1:5, 1:5, main="Simbol 1",pch=1)
plot(1:5, 1:5, main="Simbol 2",pch=2)
plot(1:5, 1:5, main="Simbol 3",pch=3)
plot(1:5, 1:5, main="Simbol 4",pch=4)
plot(1:5, 1:5, main="Simbol 8",pch=8)
plot(1:5, 1:5, main="Simbol 12",pch=12)


# 5. Plot dua dan tiga dimensi
# Dua dimensi
n <- 1:20
x <- sin(n)
y <- cos(n)*exp(-n/3)
z <- outer(x,y)
par(mar=c(3,3,1.5,1.5), mex=0.8, mgp=c(2,0.5,0), tcl=0.3)
par(mfrow=c(1,2))

# plot pertama
image(z,col=gray(1:10/10))
# plot kedua
contour(z)

#tiga dimensi
par(mar=c(3,3,1.5,1.5), mex=0.8, mgp=c(2,0.5,0), tcl=0.3)
par(mfrow=c(1,2))

#plot pertama
persp(n,n,z, theta=45, phi=20)
# plot kedua
persp(n,n,z, theta=45, phi=20, shade=0.5)
persp(n,n,z, theta=45, phi=20, shade=0.5, col="red")

