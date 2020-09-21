

###Simple linear regression model for prediction of sunday newspaper edition at the basis of daily newpaper edition ####

#Load data
Nd<-read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Linear Regression\\Simple Linear regression\\Nd.csv")

# Visualization
install.packages("lattice")
library(lattice)
dotplot(Nd$sunday, main="Dot Plot of Sunday Circulations",col="dodgerblue4")
dotplot(Nd$daily, main="Dot Plot of Daily Circulations", col="dodgerblue4")
boxplot(Nd$sunday,col="dodgerblue4")
boxplot(Nd$daily,col="dodgerblue4")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(Nd)

#Model building
model<- lm(sunday~daily,data =Nd)
summary(model)
#Preparing new data frame with new data
new_daily=data.frame(daily=c(391.952,516.981))
#Predict for the new data
sun1=predict(model,new_daily)
#Print predicted value
sun1

#Predict for daily variable from the historical data
pred<-predict(model)
#Print predicted values
pred

#Prepare a new data frame with pred and error
finaldata<-data.frame(Nd,pred,"Error"= Nd$sunday-pred)
finaldata








