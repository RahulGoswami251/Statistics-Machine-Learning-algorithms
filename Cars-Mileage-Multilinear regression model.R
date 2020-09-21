
#### Multilinear regression model for prediction of mileage of car as per car input parameters###### 

#Load the mileage data set   
mileage<-read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Linear Regression\\Multilinear regression\\mileage.csv")

#mileage<-Cars
#Scatter Plot Matrix:
pairs(mileage)

#Correlation Matrix:###
cor(mileage)
#Regression Model and Summary
model.car<-lm(MPG~HP+VOL+SP+WT,data = mileage)
summary(model.car)
#########Experiment#####################
reg_vol<-lm(MPG~VOL,data = mileage)
summary(reg_vol)
reg_wt<-lm(MPG~WT,data = mileage)
summary(reg_wt)
reg_wt_vol<-lm(MPG~WT+VOL,data = mileage)
summary(reg_wt_vol)
##################
#Regression Model and Summary
model.car<-lm(MPG~.,data = mileage)
summary(model.car)
#Multi-colinearity
install.packages("car")
library(car)
#Variance Inflation Factor
car::vif(model.car)
##Subset selection
library(MASS)
stepAIC(model.car)
################################
#Full Model Building process
#Regression Model and Summary
model.car<-lm(MPG~.,data = mileage)
#Diagnostic Plots:
#Residual Plots, QQ-Plos, Std. Residuals vs Fitted
plot(model.car) 
#Residuals vs Regressors
library(car)
residualPlots(model.car)
#Added Variable Plots
avPlots(model.car)
#QQ plots of stadentized residuals
qqPlot(model.car)
#Deletion Diagnostics
influenceIndexPlot(model.car) # Index Plots of the influence measures


####Iteration 1 
#Remove 77th observation
mileage["HP2"] <-mileage$HP*mileage$HP
mileage["SP2"] <-mileage$SP*mileage$SP
mileage1<-mileage[-77,]


model1<-lm(MPG~.,data = mileage1)
summary(model1)
plot(model1) 
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)

#iteration2
mileage2<-mileage[-c(77,66,79,81),]


model2<-lm(MPG~.,data = mileage2[,-c(5)])
summary(model2)







