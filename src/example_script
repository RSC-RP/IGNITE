# What is a package? 
# Load packages
library(ggmap)
library(dplyr)
#step 1 import data
test <- read.csv("./data/2018_2020_Combined_-_Squirrel_Data.csv") 
#step 2 what does your data look like?
names(test)
#How many records are in the data set?
count(test)
#Look in Environment to see whole file
# 2 notes fields: Other.Activities, Other.Interactions
#Common to need information from the notes section of a medical record
# If looking at 100s or 1000s, don't want to read each individually
#Use grep to search for a term in R
# What are the risks of this?
  dogs <- test %>% mutate(mentions_dogs = grepl("cat", Other.Interactions, ignore.case =TRUE)) 
  #result has too many columns really hard to read. Limit the columns

  dogs <- test %>% mutate(mentions_dogs = grepl("cat", Other.Interactions, ignore.case =TRUE))%>% #grepl returns TRUE/FALSE
  select(Unique.Squirrel.ID, Other.Interactions, mentions_dogs) 
  #Too many records to go through, filter to only relevant records
  dogs <- test %>% mutate(mentions_dogs = grepl("cat", Other.Interactions, ignore.case =TRUE))%>% #grepl returns TRUE/FALSE
    select(Unique.Squirrel.ID, Other.Interactions, mentions_dogs) %>%
    filter(mentions_dogs == TRUE)

 

  
  colnames(test) <- c("lon", "lat", "eating")

 

ggmap::qmplot(lon, lat, data = test, zoom = 13, colour = I('red'), size = I(0.2), darken = .3)

 

ggmap::qmplot(lon, lat, data = test, zoom = 13, color = factor(eating)) + #factor converts eating field to a factor
  scale_color_manual(values = c("TRUE" = "red", "FALSE" = "blue")) + #scale_color_manual lets you assign colors
  theme_minimal() #optional
print"yellow"
