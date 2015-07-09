######### Q1 #############

fir=c(20,32,35,34,40,51,52,56,57,68)
sec=c(23,34,36,44,42,51,54,57,54,62)

#1-a
 
plot(sec~fir)

#1-b
# it looks like they have a possitive relationship. it looks that they have some strong relavance.

#1-c
r=cor(sec,fir)


#correlation coefficient is 0.9690331.

#1-d
se=sqrt((1-r^2)/(length(fir)-2))
#standard error for correlation coefficient is 0.08730325.the real relation between first visit and second visit can be differ in these ranges.

#1-e

t=cor.test(fir,sec)
t

######### Q2 #############

fir
secplus=sec+rep(30,length(fir))

t2=cor.test(fir,secplus)

#2-a
# there is no difference between Q1's result and Q2's result. So we can conclude if we subtract or add constant number on the valuse does not effect on correlation
# coefficient.

#2-b

mulfir=100*fir
sec

t3=cor.test(mulfir,sec)
t3

# correlation coefficient became no different. So we can conclude that if we multiply constant on values does not effects on Corr. coefficients.

######### Q3 ##############

q3=read.csv("C:\\Users\\yeeun\\Desktop\\question3.csv",header=T)
names(q3)

#3-a

plot(captive~home,data=q3)

# answer: logged home and capitive has negative relation.

#3-b : logged home and capitive has negative relation.
fit11=lm(captive~home,data=q3)
abline(fit11)


#3-c
summary(fit11)

# Fitted line's p-valuse is 0.002049, so we can confidence about our model the level of 95%.

#3-4
fit12=lm(captive~home,data=q3[-20,])
summary(fit12)
abline(fit12,col="red")

#if we remove outlier makes linear line.





