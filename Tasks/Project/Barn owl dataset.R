setwd('~/Desktop/Evolution/Tasks/Project')
my_data <- read.table(pipe("pbpaste"), sep="\t", header=TRUE)
head(my_data)

#hypothesis
#Will bill size increase as wing size increases in all three barn owl lineages?