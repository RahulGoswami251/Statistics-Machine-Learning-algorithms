

##### Simple linear regression model for prediction of adipose tissue at the basis of waist circumference #####

#Load the data 
WC_AT <- read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Linear Regression\\Simple Linear regression\\WC_AT.csv")

#Regression equation
#Syntax  model<-lm(AT~Waist,data=data set name)
colnames(WC_AT)
model<- lm(AT~Waist,data =WC_AT)
summary(model)

new_waist=data.frame(Waist=c(74.75))

AT=predict(model,new_waist)
AT


#Predict for daily variable from the historical data
pred<-predict(model)
#Print predicted values
pred
#Prepare a new data frame with pred and error
finaldata<-data.frame(WC_AT,pred,"Error"= WC_AT$Waist-pred)
finaldata
