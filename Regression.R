install.packages("tidyverse")
library(readxl)
install.packages("esquisse")

housing <-read.csv("C:/Users/Dan Nyaega/Downloads/Housing_Price_Data.csv")
housing

str(housing)

head(housing)
#MLR
Model_data <- lm(price ~ area + bedrooms + stories, data = housing)
Model_data

summary(Model_data)
