
##########################
##     lecture 7        ##
##########################
k=c()
k[1]<-1

cltdice=function(k,n){
  #k=repeating size
  #n=sample size
  clt<-c()
  for (i in seq(1,k,seq(1))){
    dice=sample(c(1:6),rep=T,size=n)
    clt[i]<-mean(dice)
  }
  return(clt)
}

#### CLT hist #######
m=cltdice(1000,1000) #repeating 1000 with samplsize 1000
hist(m,main="repeating 1000 times with sample size 1000")


