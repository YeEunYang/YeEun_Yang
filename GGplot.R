issdata=read.csv("C:\\Users\\yeeun\\Desktop\\issdata.csv",header=T)
summary(issdata)
length(issdata[,1])
# 1,2,3 don't need. ViolentCrimesPerPop is response variale
names(issdata)


#explain varialbes 4-103
explain=issdata[,c(4:103)]
summary(explain)

install.packages("ggplot2")
library(ggplot2) 
# qplot(x, y, data=, color=, shape=, size=, alpha=, geom=, method=, formula=, facets=, xlim=, ylim= xlab=, ylab=, main=, sub=)

qplot(racePctAsian,ViolentCrimesPerPop,data=issdata,main="relation between Crime rate and Asian percentage in population")
