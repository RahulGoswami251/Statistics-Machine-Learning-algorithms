


#Hypothisis Testing Example: Supermarket Loyalty Program
# H0: mu0 <= 120
# Ha: mu0 >= 120
# Number of random sample n=80
# mu = 120
# mean of random sample xbar= 130
# sample standard devitaion s = 40 

t <- xbar-mu/s/sqrt(n)
m <- s/sqrt(n)

m <- 40/sqrt(80)
m
t <- xbar-mu/m
t <- c(130-120)/m
t

# P-Value 
g <- pt(2.236,79)
r <- c(1-g)
r

# p value is 0.01408664 which is less than 0.05 then we reject the null hypothisis or 
# It means that 99.5% probability is that mu >= 120 or 99.5% probabilty is for rejecting
# null hypothisis. 



#Example: Process control at Call Center
# Numer of sample xbar = 50
# mu = 4min. & satndard deviation sigma=3min.
# H0: mu=4 & Ha: mu!=4

x <- c(call_center$`Mean Call Duration`)
x

t.test(x,alternative ="two.sided",mu=4, conf.level = 0.95)

# P-value 
p <- 2*pt(2.0893,19)
p

  
# As per calculated p value = 1.949  which is not less than 0.05 
# then we cannot reject null hypothisis or it means that H0: mu=4 or 
# 98% is the probabilty for not rejecting null hypothisis. 


# One Sample One Tail Hypothisis Testing
# H0: mu<= 0.3 & Ha: mu>=0.3

X <- c(0.593, 0.142, 0.329,0.691,0.231,0.793,0.519,0.392,0.418)
X
t.test(X,alternative = 'two.sided',mu=0.3)

# P-Value 
p <- pt(2.2051,8)
p

prob <- c(1-p)
prob

# As per received P value 0.02926 which is less than 0.05 then 
# we reject the null hypothisis or we can say that 97% probability is for rejecting
# null hypothisis. 








