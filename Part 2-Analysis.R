#####################################################################################
# Date Created : 2 November, 2018
# Author : Jayashree Raman, for AIMS R Skillshare
#####################################################################################
#Part 1 : Data Wrangling using dplyr

#Load all libraries required
#install.packages("DAAG")
library(DAAG)
data("nassCDS")
View(nassCDS)

#Using the help function to get an overview of the data frame
?nassCDS
#or alternatively
help(nassCDS)
##############################################################################
# Q1-a, use this space/the console to try out the commands and find the answer




##############################################################################
#In dplyr, we use the pipe operator '%>% to chain multiple functions
# Q2-a - Accidents with number of males/females

numMaleAccidents <- nassCDS %>% filter() %>% nrow()
numFemaleAccidents <- nassCDS %>% filter() %>% nrow()
  
# Q2-b - Number of accidents with drivers older than or aged 40 years - #TODO


##############################################################################

# Q-3a Oldest age for males in accidents
maleAcc <- nassCDS %>% 
  filter() %>% 
  arrange() %>% 
  select()

# Q-3b Arrange data in ascending/descending order of year in which accident occurred #TODO


##############################################################################

# Q-4a Average age of female drivers
femaleAccAvgAge <- nassCDS %>% 
  filter() %>% 
  summarize(avg_age = mean(ageOFocc, na.rm=T))

# Q-4b Number of passengers who did not have their seatbelts on - using summarize()
noSeatbelts <- nassCDS %>%
  filter() %>%
  summarize(count=n())

##############################################################################

# Q5-a Injury levels sustained by female drivers 
femInjLevels <- nassCDS %>% 
  filter() %>% 
  group_by() %>% 
  summarize(count=n())

# Q5-b Speed Ranges in which male drivers who were in accidents drove - #TODO
# maleSpeeds <-


######################################################################################
#Part 2 : Visualizaing data using ggplot2 package


#Injury levels of female drivers #TODO
ggplot(femInjLevels, aes(x=, y=))+ 
  geom_bar(stat="identity", col="green") + 
  scale_x_discrete(limits=c(0:5))


# Speed ranges of male drivers #TODO
#ggplot(maleSpeeds, aes(x=, y=))+ 
  geom_bar(stat="identity", col="blue")
 
# Age distribution of drivers in accidents in 1997 vs 2001
# Computing / Plotting for Year 1997
accidents97 <- (nassCDS %>% filter(yearacc=='1997'))
ggplot(accidents97, aes(y=ageOFocc, x=dvcat)) + geom_boxplot(color="red", fill="orange", alpha=0.2)
accidents97_plot <- ggplot(accidents97, aes(y=ageOFocc, x=dvcat, fill=dvcat)) + geom_boxplot() + ggtitle("Accidents in 1997")

# Computing / Plotting for Year 2001 - #TODO


# Stacked Bar
injurySeverity <- nassCDS %>% 
  filter(dead=="alive") %>% 
  group_by(dvcat, injSeverity) %>% 
  summarize(countofInjured= n())

injurySeverity <- injurySeverity[!is.na(injurySeverity$injSeverity),]

injurySeverityPlot <- ggplot(injurySeverity, aes(x=dvcat, y = countofInjured)) + 
  geom_bar(aes(fill=-injSeverity), stat="identity") 



ggplot(nassCDS, aes(x=ageOFocc, y=yearVeh)) + geom_point(aes(col=sex))