setwd('~/Desktop/Evolution/Tasks/Task_07')
install.packages(phytools)
install.packages(ape)
library(phytools)
library(ape)
text.string<-
  "(((((((cow,pig),whale),(bat,(lemur,human))),(robin, iguana)),coelacanth
),(gold_fish,trout)),shark);"
vert.tree<-read.tree(text=text.string)
plot(vert.tree,edge.width=2)
nodelabels(frame="circle",bg='white',cex=1)
#Question 1: Human
vert.tree
str(vert.tree)
?str
tree<-read.tree(text="(((A,B),(C,D)),E);")
plotTree(tree,offset=1)
tiplabels(frame="circle",bg='lightblue',cex=1)
nodelabels(frame="circle",bg='white',cex=1)
tree$tip.label
tree$edge
AnolisTree<-force.ultrametric(read.tree("http://jonsmitchell.com/data/anolis.tre"))
par(las=1)
hist(AnolisTree$edge.length,col='black',border='white',main="",xlab="edge length for Anolis tree",ylim=c(0,50),xlim=c(0,6))
tipEdges<-which(AnolisTree$edge[,2]<=Ntip(AnolisTree))
Lengths<-AnolisTree$edge.length
names(Lengths)<-AnolisTree$tip.label
names(Lengths)[which(Lengths==min(Lengths))]
plot(AnolisTree,cex=0.25)
Labs<-sapply(AnolisTree$edge.length,round,digits=2)
edgelabels(text=Labs,cex=0.25)

?plot.phylo
plot(AnolisTree,type="phylogram",show.tip.label=FALSE,cex=0.25)
plot(AnolisTree,type="radical",cex=0.25)
eCols<-rep("black",162)
(eCols[tipEdges]="red")
plot(AnolisTree,type="phylogram",cex=0.25,edge.col=eCols)

shortedgelength<-which.min(Lengths)
shortedgelength
?drop.tip
AnolisTree2<-drop.tip(AnolisTree,tip=shortedgelength)
dev.off()

plot(AnolisTree2,cex=0.25)
Ntip(AnolisTree)
Ntip(AnolisTree2)

pdf("007_plot01.pdf")
ltt(AnolisTree)
abline(0,1,lwd=2,col='red',lty=2)
fit.bd(AnolisTree,rho=0.2,b=AnolisTree,d=AnolisTree)
dev.off()

library(phytools)
plot(tree,type="fan")
data<-read.csv("https://jonsmitchell.com/data/svl.csv",stringsAsFactors = F,row.names=1)
svl<-setNames(data$svl,rownames(data))
Ancestors<-fastAnc(AnolisTree,svl,vars=TRUE,CI=TRUE)
par(mar=c(0.1,0.1,0.1,0.1))
plot(AnolisTree,type="fan",lwd=2,show.tip.label=F)
tiplabels(pch=16,cex=0.25*svl[AnolisTree$tip.label])
nodelabels(pch=16,ex=0.25*Ancestors$ace)
obj<-contMap(AnolisTree,svl,plot=F)
dev.off()
plot(obj,legend=0.7*max(nodeHeights(AnolisTree)),sig=2,fsize=c(0.7,0.9))
fossilData<-data.frame(svl=log(c(25.4,23.2,17.7,19.7,24,31)),tip1=c(
  "Anolis_aliniger","Anolis_aliniger","Anolis_occultus","Anolis_ricordii
  ","Anolis_cristatellus","Anolis_occultus"),tip2=c("Anolis_chlorocyanus
  ","Anolis_coelestinus","Anolis_hendersoni","Anolis_cybotes","Anolis_
  angusticeps","Anolis_angusticeps"))
fossilNodes<-c()
nodeN<-c()
for(i in 1:nrow(fossilData)) {
  Node<- fastMRCA(AnolisTree, fossilData[i, "tip1"], fossilData[i,"tip2"])
  fossilNode[i]<- fossilData[i, "svl"]
  nodeN[i]<- Node
  names(fossilNodes)<- nodeN
}
Ancestors_withFossils<-fastAnc(AnolisTree,svl,anc.states=fossilNodes,CI=TRUE,var=TRUE)


#EXTRA CREDIT