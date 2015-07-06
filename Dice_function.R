dice=function(k){
  #n is numberof experiment
  x<<-sample(x=c(1,2,3,4,5,6),size=k,replace=T)
  y<<-sample(x=c(1,2,3,4,5,6),size=k,replace=T)
  m=x+y
  return(m)
}

#10 times rolled
z1=dice(10)
hist(z1)

#100 times rolled
z2=dice(100)
hist(z2)

#10000 times rolled
z3=dice(10000)
hist(z3)

# i could learn that more trial number, it gets more similar to normal dist.
