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

Residuals:
     Min       1Q   Median       3Q      Max 
-3994112  -791267   -55024   591127  6347110 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 157155.26  269668.50   0.583     0.56    
area           417.73      27.77  15.044  < 2e-16 ***
bedrooms    418703.50   89132.46   4.698 3.34e-06 ***
stories     673797.19   75220.34   8.958  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1389000 on 541 degrees of freedom
Multiple R-squared:  0.4518,	Adjusted R-squared:  0.4488 
F-statistic: 148.6 on 3 and 541 DF,  p-value: < 2.2e-16
