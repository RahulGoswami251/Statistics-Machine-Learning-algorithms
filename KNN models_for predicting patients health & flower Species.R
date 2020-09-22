

##### K-Nearest Neighbour (KNN) model for predicting pataint have cancer or not as per diagnosis #####

## Load the data set 
wbcd<-read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\KNN\\Patients health data.csv")
# Table of diagnosis
wbcd<-wbcd[,-1]
prop.table(table(wbcd$diagnosis))*100
# Recode diagnosis as a factor
wbcd$diagnosis <- factor(wbcd$diagnosis, levels = c("B", "M"))
# Create training and test data
wbcd_train <- wbcd[1:469, ]
wbcd_test <- wbcd[470:569, ]

# Create labels for training and test data
wbcd_train_labels <- wbcd[1:469, 1]
wbcd_test_labels <- wbcd[470:569, 1]

#---- Training a model on the data ----

#Load the "class" library
install.packages("class")
library(class)

wbcd_test_pred <- knn(train = wbcd_train[,-1], 
                      test = wbcd_test[,-1],
                      cl = wbcd_train_labels, k=25)


##--------Evaluating model performance ----
# Create the cross tabulation of predicted vs. actual
table(wbcd_test_labels,wbcd_test_pred)



##### KNN model for pedicting the species ###### 
#Load the library
install.packages("e1071")
library(e1071)
library(caret)

# Load the dataset
data(iris)
ctrl <- trainControl(method="cv") 
my_knn_model <- train(Species ~ .,
                      method = "knn",
                      data = iris,
                      trControl=ctrl,
                      tuneGrid = expand.grid(k = c(1,2,20,19)))
my_knn_model



