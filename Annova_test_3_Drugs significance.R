


##### ANOVA testing to know the significance of all three pain relief drugs for solving migrane problem #####  

#Combine all three pain relief drugs ratings  
pain=c(4,5,4,3,2,4,3,4,4,6,8,4,5,4,6,5,8,6,6,7,6,6,7,5,6,5,5)
#Divide all three pain relief drugs as per volunteers ratings and create dataset  
drug=c(rep('A',9),rep('B',9),rep('C',9))
migrane =data.frame(pain,drug)
migrane$drug<-as.factor(migrane$drug)
#Visualization of all three pain releif drugs                        
plot(pain~drug,data = migrane)
#Anova test on all three drugs 
results=aov(pain~drug,data=migrane)
summary(results)

