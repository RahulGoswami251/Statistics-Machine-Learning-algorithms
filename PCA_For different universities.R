
#### Prepare PCA rules for different unversities ####

##Load the university data set 
Universities<-read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Principle component analysis(PCA)\\Universities.csv")

Universities1<-scale(Universities[,2:7])
pca<-princomp(Universities1, cor = TRUE,scores = TRUE, covmat = NULL)

summary(pca)
pca$scores
new_data<-pca$scores[,1:2]

#pca$loadings
plot(pca$scores[,1:2],col="Blue",cex = 0.2)
text(pca$scores[,1:2], labels=c(1:25), cex= .7)
