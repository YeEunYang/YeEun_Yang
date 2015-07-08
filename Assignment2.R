############## question 1 #####################


x=c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74
    ,91,83,98,95,111,99,120,93,84)

# question 1.1
mean(x)
> mean(x)
[1] 92.2

# question 1.2
# probably no, cause it's  sample data so it won't be exectlty same.

# question 1.3
se=sqrt(var(x)/length(x))

# question 1.4
cof_int=list("lower bound"=mean(x)-1.96*se,"upper bound"=mean(x)+1.96*se)
cof_int

t.test(x)
$`lower bound`
[1] 88.326

$`upper bound`
[1] 96.074

################ question 2 ################

m=c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
f=c(223.4,221.5,230.2,224.3,223.8,230.8)

par(mfrow=c(1,2))
boxplot(m,main="male")
boxplot(f,main="female")


t.test(m,f,var.e=T)

>Two Sample t-test

data:  m and f
t = -0.62681, df = 11, p-value = 0.5436
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -6.423378  3.575759
sample estimates:
  mean of x mean of y 
224.2429  225.6667 

# There is no evidence to prove the difference in two groups 
#in the confidence level 95%.

################ question 3 ####################


#3.a = no, you can judge the effect by p-value.
#3.b = yes, it has some effect.
#3.c = no, type 1 error fixed as 0.05
#3.d = no,.
#3.e = yes. becase it's p-value is 0.04.


############### question 4 #####################

pA=c(248,236,269,254,249,251,260,245,239,255)
pB=c(380,391,377,392,398,374)

wilcox.test(1.5*pA,pB)

>Wilcoxon rank sum test

data:  1.5 * pA and pB
W = 16, p-value = 0.1471
alternative hypothesis: true location shift is not equal to 0

#1.5*number of person A's red blood cells is sames as person B's red blood cell number.


############### question 5 #####################

#Standard error is show that how your mean estimator is close to population mean. 
#However, standard deviation describes the destribution of your population mean,

pop=c(1:100)
samp=sample(size=10,1:100)
sd(pop) # this one shows the distribution of population.
sd(samp) # this one shows how your mean value from sample is similar to
        # populaion mean. also those two has different value.







