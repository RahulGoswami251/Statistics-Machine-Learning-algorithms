


##### Survival analysis model for analysis of unemployment people ####

##Set the environment 
install.packages("survival")
library(survival)

#Load the unemployment people data 
survival_unemployment1<-read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Survival Analysis\\survival_unemployment1.csv")
attach(survival_unemployment1)

# Define variables 
time <- spell
group <- ui
X <- cbind(logwage, ui, age)

# Descriptive statistics
summary(time)
summary(event)
summary(X)
summary(group)

# Kaplan-Meier non-parametric analysis
kmsurvival <- survfit(Surv(time,event) ~ 1)

plot(kmsurvival, xlab="Time", ylab="Survival Probability")

# Kaplan-Meier non-parametric analysis by group
kmsurvival1 <- survfit(Surv(time, event) ~ group)

plot(kmsurvival1,xlab="Time", ylab="Survival Probability",col = c(2,3),conf.int = T)
