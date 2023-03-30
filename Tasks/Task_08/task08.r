setwd('~/Desktop/Evolution/Tasks/Task_08')
library("phytools")

#Question 1-3
trees<-list()
births<-vector()
Fractions<-vector()
?pbtree
for(i in 1:100){
  births[i]<-runif(1)
  Fractions[i]<-runif(1)
  trees[[i]]<-pbtree(n=100,b=births[i],d=(births[i]*Fractions[i]))
}

#Question 4
plot(trees[[i]])
tips<-log(sapply(trees,Ntip))
netdiv<-(births-(births*Fractions))
plot(netdiv, tips)

#Question 5
avgbranchlength<-vector()
for(i in 1:100){
  births[[i]]<-runif(1)
Fractions[[i]]<-runif(1)
trees[[i]]<-pbtree(n=100,b=births[[i]],d=(births[[i]]*Fractions[i]))
avgbranchlength[i]<-mean(trees[[i]]$edge.length)
}
plot(births, avgbranchlength,xlab="speciation rate",ylab="average branch length")

#Question 6
cor(births, avgbranchlength)

#Question 7
largest_tree<-trees[[which.max(sapply(trees,length))]]
Tree<-largest_tree
plot(Tree)
dev.off()
rates<-c()
traits<-list()
for(i in 1:100){
  rates[i]<-runif(1)
traits[[i]]<-fastBM(tree=Tree,sig2=rates[i])
  }

#Question 8
mean_traits<-sapply(traits,mean)
cor(mean_traits,rates)
#The correlation is -0.01386208 which means there is a very weak negative correlation.
plot(rates,mean_traits,xlab="Rates",ylab="Variance of traits")
dev.off()

#Question 9
var_traits<-sapply(traits,var)
cor(var_traits,rates)
#The correlation is 0.7343654 which means there is a strong correlation.
plot(rates,var_traits,xlab="Rates",ylab="Variance of traits")
dev.off()

#Question 10
cor(traits[[1]],traits[[2]])
#The correlation is 0.1284441 which means there is a weak positive correlation.
traitMat<-cbind(traits[[1]],traits[[4]])
pdf("08_plot.pdf")
plot(traitMat)
dev.off()

#Extra Credit
pdf("08_ec.pdf")
phylomorphospace(Tree,traitMat,xlab="Trait 1",ylab="Trait 2")
dev.off()