setwd('~/Desktop/Evolution/Tasks/Task_10')

#X
x<-rnorm(100,mean=0,sd=2)

#Y
y<-x*5+2++runif(100,min=0,max=0.1)

#Linear model, slope, and y-intercept
#Intercept= 2.049167, x= 5.000983
lm(y~x)
linearmodel<-lm(y~x)
summary(linearmodel)
plot(linearmodel)
slope<-vector("numeric",100)
intercept<-vector("numeric",100)
z<-vector("numeric",100)

#for loop
for(i in 1:100){
  x<-rnorm(100,mean=0,sd=2)
  z[i]<-runif(1,min=0.5,max=2)
  y<-x*5+2++runif(100,min=0,max=0.1)
  linearmodel<-lm(y~x)
  intercept[i]<-coef(linearmodel)[1]*z[i]+2
  slope[i]<-coef(linearmodel)[2]*z[i]
}
#Plot 10
pdf("plot10.pdf")
plot(z,slope,xlab="z",ylab="Estimated slope")
abline(lm(slope~z),col="red")
dev.off()

#Extra Credit Monty Hall Problems
n <- 10000
prize <- sample(c("A", "B", "C"), size=n, replace=TRUE)
doorOpened <- ifelse(prize=="A", sample(c("B", "C"), size=n, replace=TRUE), ifelse(prize=="B", "C", "B"))
doorUnopened <- ifelse(doorOpened=="B", "C", "B")
NotSwitchingWinChance <- sum(prize=="A")/n
SwitchingWinChance <- sum(prize==doorUnopened)/n
?barplot
WinChance <- c(NotSwitchingWinChance,SwitchingWinChance)
pdf("plot10_ec01.pdf")
barplot(WinChance, names.arg = c("Not Switching Doors", "Switching Doors"), ylab="Chance of Winning", main="Monty Hall Odds of Winning Grand Prize", col="red")
dev.off()

#Extra Credit Meme
install.packages("meme")
library("meme")
install.packages("jpeg")
library("jpeg")
jpeg("Meme.jpeg")
pic1 <- system.file("success.jpg", package="meme")
meme::meme(pic1, "Me getting an R assigment to submit")
dev.off()