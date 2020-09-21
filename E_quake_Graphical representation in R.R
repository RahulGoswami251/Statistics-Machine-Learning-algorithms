


# Practice_R1

###### Datasets #########

e_quakes <- datasets::quakes

######### Top & Last 10 rows data ##########

head(e_quakes,10)
tail(e_quakes,10)

######### Column ###########

e_quakes[,c(1,2)]
e_quakes$lat
e_quakes[1, ]

######## Summary of data #########

summary(e_quakes$lat)
summary(e_quakes$long,e_quakes$mag)
summary(e_quakes)

#############
plot(e_quakes$lat, type = "b")  # p: points, l: lines, b: points & lines    
plot(e_quakes$mag, xlab = 'e_quake concentration',
                   ylab = 'No. of Instances', main = 'e_quakes level in UK country',
                   col =  'red')


######### Horizontal Bar Plot ########## 

barplot(e_quakes$mag, main = 'Intensity of e_quake in land',
                      ylab = 'magnitude levels', col = 'blue', horiz = 'F')


######### Histogram ##########

hist(e_quakes$long)
hist(e_quakes$long,
     main = 'e_quakes level in land',
     xlab = 'e_quakes level', col = 'blue')


######### Single Box Plots ##########

boxplot(e_quakes$mag, main = "Box plot")


######### Multiple box plots ##########

boxplot(e_quakes[,1:4], main = 'Multiple')


#margin of grid(mar),
#no of rows & columns(mrow),
#whether a boarder is to be included(bty)
#and position of the labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot


par(mfrow = c(3,3),mar= c(2,3,2,1), las = 1, bty ="n")  

plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$long)
plot(e_quakes$lat, type= 'l')
plot(e_quakes$lat, type= 'l')
plot(e_quakes$lat, type= 'l')
barplot(e_quakes$lat, main = 'earthquakes intencity in land',
                      xlab = 'latitude level', col = blues9, horiz = 'TRUE') 
hist(e_quakes$stations)
boxplot(e_quakes$stations)
boxplot(e_quakes[ ,0:3], main = 'Multiple box plots')








