

########## Prepare a model for strength of concrete data using Neural Networks ##########

#Load the data
concrete <- read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Neural Network\\concrete.csv")

#Custom normalization function
normalize <- function(x) { 
  return((x - min(x)) / (max(x) - min(x)))
}
#Apply normalization to entire data frame
concrete_norm <- as.data.frame(lapply(concrete, normalize))
#Create training and test data
concrete_train <- concrete_norm[1:773, ]
concrete_test <- concrete_norm[774:1030, ]
                 
OR
                 
library(caTools)
sample <- sample.int(n = nrow(concrete_norm), size = floor(.75*nrow(concrete_norm)), replace = F)
train <- concrete_norm[sample, ]
test  <- concrete_norm[-sample, ]

##Training a model on the data ----
#Train the neuralnet model
install.packages("neuralnet")
library(neuralnet)

#Simple ANN with only a single hidden neuron
concrete_model <- neuralnet(strength ~ cement + slag +
                              ash + water + superplastic + 
                              coarseagg + fineagg + age,
                            data = train,act.fct ="logistic")

#Visualize the network topology
plot(concrete_model)

##Evaluating model performance ----
#Obtain model results
model_results <- compute(concrete_model, test[1:8])
#Obtain predicted strength values
predicted_strength <- model_results$net.result
#Examine the correlation between predicted and actual values
cor(predicted_strength, test$strength)

##Improving model performance ----
#A more complex neural network topology with 5 hidden neurons
concrete_model2 <- neuralnet(strength ~ cement + slag +
                               ash + water + superplastic + 
                               coarseagg + fineagg + age,
                             data = train, hidden =c(5,2))

#Plot the network
windows();
plot(concrete_model2)
#Evaluate the results as we did before
model_results2 <- compute(concrete_model2, test[1:8])
predicted_strength2 <- model_results2$net.result
cor(predicted_strength2, test$strength)




