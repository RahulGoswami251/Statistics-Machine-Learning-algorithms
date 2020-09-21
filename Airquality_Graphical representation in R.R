

###### Datasets #########

airquality <- datasets::airquality

######### Top & Last 10 rows data ##########

head(airquality,10)
tail(airquality, 10)

######### Column ###########

airquality[,c(1,2)]
airquality$Wind
airquality[1,]
df <- airquality[,-6]

###### Summary of the data ########

summary(airquality$Temp)
summary(airquality)
summary(airquality$Wind)

######################

plot(airquality$Wind)
plot(airquality$Temp, airquality$Wind)
plot(airquality)

########## Points & Lines ############

plot(airquality$Wind, type="b") # p: points, l:lines, b: both

plot(airquality$Wind, xlab = 'ozone Concentration',
                      ylab = 'No of Instances', main = 'Ozone levels in NY city',
                      col =  'blue')

######### Horizontal Bar Plot ########## 

barplot(airquality$Ozone, main = 'Ozone Concentration in air',
        ylab = 'ozone levels', col= 'blue', horiz = F)


######### Histogram ##########

hist(airquality$Temp)
hist(airquality$Temp,
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.' , col='blue')



######### Single Box Plots ##########

boxplot(airquality$Temp,main="Boxplot")


######### Multiple box plots ##########

boxplot(airquality[,1:4], main ='Multiple')


#margin of grid(mar),
#no of rows & columns(mrow),
#whether a boarder is to be included(bty)
#and position of the labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot


par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty="n")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concentration in air',
        xlab = 'ozone levels', col= 'green', horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main= 'Multiple Box plots')





