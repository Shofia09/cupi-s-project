x <- seq(-5, 5, length=50)
y <- x
f <- function(x, y){ x * sin(y) + y*sin(x)}
z <- outer(x, y, "f")
par(mar=c(3,3,1.5,1.5), mex=0.8, mgp=c(2,0.5,0), tcl=0.3)
par(mfrow=c(1,2))

#plot pertama
persp(x,y,z, theta=45, phi=20)
# plot kedua
persp(x,y,z, theta=45, phi=20, shade=0.5, col="slateblue")

#SHOFIA NABILA AZZAHRA
#201810101084