

### Hierarchical clustering for making best clusters of universities as per their input parameters##### 

##Load data set
mydata1<-read.csv("E:\\2nd May Data Science Class\\Excel R Data Science Course_Class work_2nd_may_2020\\All Models In R code\\Clustering\\Universities.csv")

################################
##data standardization
mydata <- scale(mydata1[,2:7])

d <- dist(mydata, method = "euclidean") #Computing the distance natrix
fit <- hclust(d, method="average") # Building the algorithm # try with 'centroid'
plot(fit) # display dendogram
clusters <- cutree(fit, k=4) # cut tree into 4 clusters
# draw dendogram with red borders around the 4 clusters 
rect.hclust(fit, k=4, border="red")
#Attach the cluster numbers to Uni
Final_output=data.frame('Uni'=mydata1[,1],'Cluster' =clusters)

View(Final_output)
