# Sample Data
data <- data.frame(x1 = c(1, 2, 3, 4, 5),
                   x2 = c(2, 3, 4, 5, 6),
                   y = c(5, 7, 9, 11, 13))

# Fit the model
model <- lm(y ~ x1 + x2, data = data)

# Summary of the model
summary(model)

#Results
Call:
lm(formula = y ~ x1 + x2, data = data)

Residuals:
         1          2          3          4          5 
 1.403e-15 -1.892e-15 -4.904e-17  1.631e-16  3.753e-16 

Coefficients: (1 not defined because of singularities)
             Estimate Std. Error   t value Pr(>|t|)    
(Intercept) 3.000e+00  1.448e-15 2.072e+15   <2e-16 ***
x1          2.000e+00  4.366e-16 4.581e+15   <2e-16 ***
x2                 NA         NA        NA       NA    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.381e-15 on 3 degrees of freedom
Multiple R-squared:      1,	Adjusted R-squared:      1 
F-statistic: 2.098e+31 on 1 and 3 DF,  p-value: < 2.2e-16

Checking Assumptions
# Plot residuals
plot(model$residuals)
Linearity: The relationship between the dependent and independent variables is linear.
Independence: The residuals (errors) are independent of each other.
Homoscedasticity: The variance of the errors is constant across all values of the independent variable(s).
Normality of residuals: The residuals are normally distributed.

