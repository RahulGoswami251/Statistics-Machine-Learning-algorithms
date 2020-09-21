

# Variable
# Price(Y)
# Age
# Kilometers
# HP
# Gears
# CC
# Doors
# QuartTax
# Weight
# Description
# Offer price in Euros
# Age in months as on August 2004
# Accumulated kilometers on odometer
# Horsepower
# Number of gears
# Cylinder volume in cubic centimeters
# Number of doors
# Quarterly Road Tax 
# Weight in kilograms

#### Multilinear regression model for prediction of buyback new car difference price as per other input car parameters ##### 

##Load the toyota data set 
toyota_r<-read.csv("Load the excel data set in global environment")
toyota_r<-Toyota
#check if na values are there
colSums(is.na(toyota_r))
toyota<-na.omit(toyota_r)
colnames(toyota)
toyota<-toyota[,c(3,4,7,9,16,13,14,17,18)]

#toyota1<-subset(toyota,select = c("Price","cc") )
#Scatter Plot Matrix:
pairs(toyota)
#Correlation Matrix:
cor(toyota)


#Regression Model and Summary
model.car<-lm(Price~Age_08_04+KM+HP+Gears+cc+Doors+Quarterly_Tax+Weight,data = Toyota)
summary(model.car)

#########Experiment#####################
reg_cc<-lm(Price~cc,data = Toyota)
summary(reg_cc)
reg_Doors<-lm(Price~Doors,data = Toyota)
summary(reg_Doors)
reg_cc_Doors<-lm(Price~cc+Doors,data = Toyota)
summary(reg_cc_Doors)
#Multi-colinearity
install.packages("car")
library(car)
#Regression Model and Summary
model.cars<-lm(Price~.,data = Toyota)
summary(model.cars)

#Multi-colinearity
install.packages("car")
library(car)
car::vif(model.car)


#Full Model Building process
#Regression Model and Summary
model.Toyota<-lm(Price~.,data = Toyota)

#Model Validation
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
#Remove 81th observation
toyota['Age2']<-toyota$Age_08_04*toyota$Age_08_04
toyota1<-toyota[-c(81),]
model.car1<-lm(Price~.,data = toyota1)
summary(model.car1)


plot(model.car1) 
qqPlot(model.car1)
influenceIndexPlot(model.car1)



########
toyota2<-toyota[-c(79,219),]

model.car2<-lm(Price~.,data = toyota2)
summary(model.car2)
qqPlot(model.car2)
influenceIndexPlot(model.car2)

###Final
model.car2<-lm(Price~.,data = toyota[-c(950,79,600,220,219,218,520,957,217,518),-c(7)])
summary(model.car2)
qqPlot(model.car2)
influenceIndexPlot(model.car2)

toyota3<-toyota[-c(950,79,600,220,219,218,520,957,217,518,949),-c(8)]
model.car3<-lm(Price~.,data = toyota3)
summary(model.car3)
qqPlot(model.car3)
influenceIndexPlot(model.car3)

##Predict for new data
testdata<-data.frame(Age_08_04=20,KM =2000,HP =90,Gears =5,cc=1500,
                     Quarterly_Tax=200,Weight=1500,Age2=400)

predict(model.car2,testdata)













