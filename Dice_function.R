dice=function(k){
  #n is numberof experiment
  x<<-sample(x=c(1,2,3,4,5,6),size=k,replace=T)
  y<<-sample(x=c(1,2,3,4,5,6),size=k,replace=T)
  m=x+y
  return(m)
}

#10 times rolled
z1=dice(10) 
hist(z1,freq=F)#freq=F look for the probabilty

#100 times rolled
z2=dice(100)
hist(z2,freq=F)

#10000 times rolled
z3=dice(10000)
hist(z3,freq=F)

# i could learn that more trial number, it gets more similar to normal dist.


#################################
#    working in lecture 6       #
#################################


#drawing emperical cdf
P = ecdf(z3) 
plot(P)

#plotting noraml dist.

x=rnorm(10000,0,sd=1)
hist(x,main="mean=0,sd=1")

### plotting 2nd version 

x <- seq(-4, 4, length=100)
hx <- dnorm(x)

degf <- c(1, 3, 8, 30)
colors <- c("red", "blue", "darkgreen", "gold", "black")
labels <- c("df=1", "df=3", "df=8", "df=30", "normal")

plot(x, hx, type="l", lty=2, xlab="x value",
     ylab="Density", main="Comparison of t Distributions")

#convert percentile mean=70 inch, sd=5 inch
z=(62-70)/5
pnorm(z)


#Jim and Mike height

Z_Mike=(67-70)/3.3
Z_Mike
pnorm(Z_Mike)

#pdf pi and cdf PI

1-pnorm(1,mean=3,sd=sqrt(5))

#qqplot data

y=sample(x=seq(-2,2,0.01),size=10,replace=T)
qqnorm(y)
qqline(y)


# hist and R script