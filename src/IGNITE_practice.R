



######################## 
# Part 3 visualization #
########################

# import necessary libraries
library(dplyr)
library(ggmap)
"ggmap : spacial visualization with ggplot2 . 
You can find more information from https://journal.r-project.org/archive/2013-1/kahle-wickham.pdf"

# import data 
squirrel_data <- read.csv("~/Desktop/YJ/CHILD/IGNITE/data/2018_Central_Park_Squirrel_Census_-_Squirrel_Data.csv", na.strings=c("","NA"))  # need to change the path
head(squirrel_data) # check your data

# -----------------------------------------------------------------------#

# practice 1: extract the "X', "Y' and the column you generated using dplyr 
## example
squirrel_data %>%
  select(c("Unique.Squirrel.ID", "Age"))

## solution 
squirrel_data_subset <- squirrel_data %>%
  select(c("X","Y", "Primary.Fur.Color")) # place "Primary.Fur.Color" with your own column

# -----------------------------------------------------------------------#

# practice 2: change column name "X" and "Y" to "lon" and "lat"
## you can use the rename() function from 'dplyr' package
## example 
head(squirrel_data_subset %>%
  rename(Colorrr = Primary.Fur.Color))

## solution
squirrel_data_subset <- squirrel_data_subset %>% 
  rename(lon = X,
         lat = Y)

## check your column names
colnames(squirrel_data_subset)

# -----------------------------------------------------------------------#

# practice 3: visualize your data on a map using 'ggmap' package
## example (if the function run more than a minutes, cancel it and use the small number for 'zoom' argument)
ggmap::qmplot(lon, lat, data = squirrel_data_subset, zoom = 14, colour = I('red'), size = I(0.2), darken = .1)

## Highlighting your own column 
ggmap::qmplot(lon, lat, data = squirrel_data_subset, zoom = 14, colour = Primary.Fur.Color, size = I(0.2), darken = .1)

## change colors to your taste
my_colors <- c("black", "brown", "gray", "white")  
ggmap::qmplot(lon, lat, data = test, zoom = 14, color = Primary.Fur.Color, size = I(0.4), darken = .5) + 
  scale_color_manual(values = my_colors)



















