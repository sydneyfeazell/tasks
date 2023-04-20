setwd('~/Desktop/Evolution/Tasks/Task_09')
install.packages("diversitree")
library("diversitree")
transition_0to1<-0.1
transition_1to0<-0.1

speciation_0<-0.2
extinction_0<-0.1

speciation_1<-0.2
extinction_1<-0.1

maxN<-1e3
maxT<-50

tree.bisse()
Pars<-c(speciation_0,speciation_1,extinction_0,extinction_1,transition_0to1,transition_1to0)
simTree<-tree.bisse(Pars,max.taxa=maxN,max.t=maxT)

str(simTree)

stateTable<-table(simTree$tip.state)
stateTable/sum(stateTable)
pdf("stateTable.pdf")
plot(stateTable)
dev.off()
?phylo
library("diversitree")
?tree.bisse

library("ape")
library("phytools")
pdf("simTree.pdf")
plotTree(simTree)
dev.off()

library(dplyr)

transition_0to1<-0.1
transition_1to0<-0.1
speciation_2<-0.2
extinction_2<-0.1
speciation_3<-0.6
extinction_3<-0.1
maxN<-1e3
maxT<-50
Pars<-c(speciation_2,speciation_3,extinction_2,extinction_3,transition_0to1,transition_1to0)
simTree2<-tree.bisse(Pars,max.taxa=maxN,max.t=maxT)
str(simTree2)
stateTable2<-table(simTree2$tip.state)
stateTable2/sum(stateTable2)
pdf("stateTable2.pdf")
plot(stateTable2)
dev.off()

transition_0to1<-0.2
transition_1to0<-0.4
speciation_2<-0.2
extinction_2<-0.1
speciation_3<-0.2
extinction_3<-0.1
maxN<-1e3
maxT<-2
Pars<-c(speciation_2,speciation_3,extinction_2,extinction_3,transition_0to1,transition_1to0)
simTree3<-tree.bisse(Pars,max.taxa=maxN,max.t=maxT)
str(simTree3)
stateTable3<-table(simTree3$tip.state)
stateTable3/sum(stateTable3)
pdf("stateTable3.pdf")
plot(stateTable3)
dev.off()

library("diversitree")
library("ape")
library("phytools")
transition_0to1<-0.1
transition_1to0<-0.1
speciation_2<-0.1
extinction_2<-0.1
speciation_3<-0.1
extinction_3<-0.1
maxN<-1e3
maxT<-
Pars<-c(speciation_2,speciation_3,extinction_2,extinction_3,transition_0to1,transition_1to0)
simTree4<-tree.bisse(Pars,max.taxa=maxN,max.t=maxT)
str(simTree4)
stateTable4<-table(simTree4$tip.state)
stateTable4/sum(stateTable4)
pdf("stateTable4.pdf")
plot(stateTable4)
dev.off()
var(stateTable4)

transition_0to1<-0.1
transition_1to0<-0.1
speciation_2<-0.2
extinction_2<-0.1
speciation_3<-0.2
extinction_3<-0.1
maxN<-1e3
maxT<-3

Pars<-c(speciation_2,speciation_3,extinction_2,extinction_3,transition_0to1,transition_1to0)
simTree3<-tree.bisse(Pars,max.taxa=maxN,max.t=maxT)
str(simTree3)
stateTable3<-table(simTree3$tip.state)
stateTable3/sum(stateTable3)

transition_021<-0.1
transition_120<-0.1
sp0<-0.5
ex0<-0
sp1<-0.5
ex1<-0
maxN<-1e3
maxT<-50
Pars2<-c(sp0,sp1,ex0,ex1,transition_021,transition_120)
random<-tree.bisse(Pars,max.taxa=maxN,max.t=maxT)
str(random)
randomtable<-table(random$tip.state)
randomtable/sum(randomtable)
rel0<-c(0.3297872,0.188,1,0.5263158)
rel1<-c(0.6702128,0.812,1,0.4736842)
merged<-rbind(rel0,rel1)
netdivers<-c(-0.2,-0.1,0,0.1)
pdf("09_plot.pdf")
plot(rel0,netdivers,xlab="relative frequency",ylab="net divers rate",xlim=c(0.1,1.1))
points(rel1,netdivers,col="blue")
title("relative freq and net divers rate")
legend(x="bottomright",legend=c("State 0","State 1"),col=c(1,'blue'),lwd=2)
dev.off()