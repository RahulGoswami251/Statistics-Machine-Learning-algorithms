

## K_means Clustering model for making clusters of universities as per their input parameters#####

#Load the data set
Universities<-read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Clustering\\Universities.csv")

# Elbow method
install.packages('factoextra')
library(factoextra)
fviz_nbclust(Universities[,-1], kmeans, method = "wss") +
  labs(subtitle = "Elbow method")

###Cluster algorithm building
km <- kmeans(Universities[,-1],4) 
km$centers
km$cluster
clust<-data.frame("University"=Universities[,1],"cluster"=km$cluster)

##Animation
install.packages("animation")
library(animation)
km <- kmeans.ani(Universities[,-1], 4)
