
# Two sample t-test for drug trails 
#H0: mu_c - mu_t = 0 & Ha: mu_c - mu_t!=0

# collect data variable by slicing indiviuall them. 
control <- c(91,87,99,77,88,91)
treat <- c(101,110,103,93,99,104)

#Conducting t-test for getting t value 
t.test(control,treat,alternative = 'two.sided',mu=0,conf.level = 0.95)

#Find P value 
p <- 2*pt(-3.4456,9.4797)
p
