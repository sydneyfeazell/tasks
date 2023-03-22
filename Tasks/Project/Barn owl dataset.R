setwd('~/Desktop/Evolution/Tasks/Project')
barn.owls<- read.csv("~/Desktop/Evolution/Tasks/Project/barn owl.csv")

#hypothesis
#Is there ab evolutionary difference in bill length between male and female barn owls in all three lineages?

#Does bill length increase as wing length increases?

#Females are colored
#Males are white


mMean <- c()
fMean <- c()
counter <- 1
for (i in c("alba", "furcata", "javanica")) {
  X <- grep(i, barn.owls$Lineage)
  Males <- which(barn.owls[X,"Sex"]==1)
  mMean[counter] <- mean(barn.owls[X[Males],"Bill"])
  Females <- which(barn.owls[X,"Sex"]==2)
  fMean[counter] <- mean(barn.owls[X[Females],"Bill"])
  counter <- counter + 1  
}

pdf("Project.DataAnalysis.pdf")
par(mar=c(3,4,1,1), las=1)
barplot(rbind(fMean,mMean), beside=T, border=c("orange","orange","blue","blue","pink","pink"), col=c("orange","white","blue","white","pink","white"), ylim=c(0,250), ylab="Bill Length Average (cm)")
axis(side=1, at=c(2,5,8), labels=c("T. alba", "T. furcata", "T. javanica"))
dev.off()


pdf("Project.DataAnalysis.Wing.Bill.pdf")
Cols <- c("blue", "green", "purple")
names(Cols) <- unique(barn.owls$Lineage)
head(barn.owls)
plot(barn.owls$Bill, barn.owls$Wing, col=Cols[barn.owls$Lineage], pch=16)

dev.off()

barnowls2 <- barn.owls[c(1, 8, 9)]
barnowls2
#Data Analysis
#Pearsons Correlation coefficient = 0.643135

correlation<-cor.test(x=barnowls2$Bill, y=barnowls2$Wing)
