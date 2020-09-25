
### Reccommendation model for reccomending movies ###### 

#Set the environment 
install.packages("recommenderlab", dependencies=TRUE)
install.packages("Matrix")
install.packages("caTools")
install.packages("plyr")
library(plyr)
library(recommenderlab)
library(Matrix)
library(caTools)
#Movie rating data
movie_rate_data <- read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Recommendation system\\Movie.csv")
#Metadata about the variable
#Movie_rate_data<-Movie
str(movie_rate_data)
#Rating distribution
hist(movie_rate_data$rating)

#The datatype should be realRatingMatrix inorder to build recommendation engine
movie_rate_data_matrix <- as(movie_rate_data, 'realRatingMatrix')
movie_rate_data_matrix@data

#User Based Collaborative Filtering
movie_recomm_model2 <- Recommender(movie_rate_data_matrix, method="UBCF")

#Predictions for all users 
recommended_items2 <- predict(movie_recomm_model2, movie_rate_data_matrix, n=5)
d<-as(recommended_items2, "list")
d

library (plyr)
df <- ldply (d, data.frame)

write.csv(df,"RE_Movies.csv")
