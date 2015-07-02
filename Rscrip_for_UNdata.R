# SKKU ISS 2015, Lecture 4
# Objective: plotting open government data

# Jevin West
# Date:  7/2/2015fs

#clean variables
rm(list=ls(all=TRUE))#remove all things 

# read in data

P <- read.csv("C:\\Users\\yeeun\\Documents\\GitHub\\SKKU_DataScience_2015\\data_sets\\UNdata_precipitation.csv",header=T)

# (1) Compare the precipitation from 1999 to 2005.  Are they different?

#### 
#Q1#Answer= They doesn't have difference in t-test and log-boxplot.  
####

attach(P)

p1999=P[Year==1999,]
p2005=P[Year==2005,]

t.test(x=p1999$Value,y=p2005$Value)

#take the log to "value" to see the box plot more clearly.
 
boxplot(log(Value)~Year,data=rbind(p1999,p2005),main="log(value) of 1999 and 2005")

################################################
#(2) Precipitation for all countries over time.#
################################################


all=tapply(P$Value,P$Year,mean)
all1=as.vector(all)

#from 1991 to 1994 => predict them by linear model

fit=lm(P$Value~P$Year)
x=c(1991:1994)
fitx=9935*x-19630987 #fitted value for missings 

all2=c(all1[1],fitx,all1[-1])
all3=cbind(c(1990:2009),all2)

plot(all3[,2]~all3[,1],xlab="Years",ylab="Values",main="Precipitation 1990-2009")
abline(lm(all3[,2]~all3[,1]),new=T,col="BLUE")

