

##Linear Regression with Random Forest 
#Set the environment 
install.packages("caret", dependencies = TRUE)
install.packages("randomForest")
library(randomForest)
library(caret)

#Load the Cars dataset 
Cars <- read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Random Forest\\mileage.csv")
#Prepare the random forest model with linear regression 
model<-randomForest(Cars$MPG~.,data=Cars,ntree=200,mtry=3,sampsize=ceiling(.7*nrow(Cars)),importance=TRUE,mse=TRUE)
# View the forest results.
print(model)

#Prediction
pred<- predict(model,Cars)
pred
