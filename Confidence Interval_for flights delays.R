


#Set the environment for C.I. 
install.packages("gmodels") 
library(gmodels) 

#Data
install.packages("nycflights13")
library(nycflights13)

#Load the data from package from nycflights13
data(flights)
dep_delay <- flights$dep_delay

#check the NA values
is.na(dep_delay)
#Remove NA values 
dep_delay_withoutNA <- dep_delay[!is.na(dep_delay)]
#CI construction 
ci(dep_delay_withoutNA,confidence = 0.90)

#### For Flights Arrival delay 
ar_delay <- flights$arr_delay
is.na(flights$arr_delay)
ar_delay_withoutNA <- ar_delay[!is.na(ar_delay)]
ar_delay
#CI construction 
ci(ar_delay_withoutNA,confidence = 0.90)


