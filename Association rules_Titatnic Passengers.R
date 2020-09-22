

# Preparing Association Rules for survival of Titanic Passengers 

##Set the environment 
install.packages("arules")
library(arules)

#Load the Titanic data set 
Titanic<-read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Association Rules\\Titanic.csv")

##Create association rules 
Titanic<-Titanic[,-c(1)]
rules <- apriori(Titanic)
arules::inspect(rules)
#Sorting rules by lift ratio 
rules.sorted <- sort(rules, by="lift")
arules::inspect(rules.sorted)

# Rules with rhs containing "Survived" only
rules <- apriori(Titanic,parameter = list(supp=0.1, conf=0.5)
                 ,appearance = list(rhs=c("Survived=No", "Survived=Yes")
                 ),control = list(verbose=F))
arules::inspect(rules)
