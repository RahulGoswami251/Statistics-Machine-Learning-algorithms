

##### Support Vector Machine model for classification of letters ####

##Load the letter data set 
letterdata<-read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Support vector machines(SVM)\\letterdata.csv")
##Convert character into factor 
letterdata$letter <- as.factor(letterdata$letter)
# divide into training and test data
set.seed(156)
letters_train <- letterdata[1:16000, ]
letters_test  <- letterdata[16001:20000, ]
##Training a model on the data ----
#Begin by training a simple linear SVM
install.packages("kernlab")
library(kernlab)
letter_classifier <- ksvm(letter ~ ., data = letters_train,
                          kernel = "vanilladot")
## Evaluating model performance ----
# predictions on testing dataset
letter_predictions <- predict(letter_classifier, letters_test)
head(letter_predictions)
#table(letter_predictions, letters_test$letter)
agreement <- letter_predictions == letters_test$letter
prop.table(table(agreement))
## Improving model performance using radial basis function kernel in model 
letter_classifier_rbf <- ksvm(letter ~ ., data = letters_train, kernel = "rbfdot")
letter_predictions_rbf <- predict(letter_classifier_rbf, letters_test)
head(letter_predictions_rbf)
#Checking the accuracy of model 
agreement_rbf <- letter_predictions_rbf == letters_test$letter
table(agreement_rbf)
prop.table(table(agreement_rbf))

