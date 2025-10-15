# Sample Data
data <- data.frame(x1 = c(1, 2, 3, 4, 5),
                   x2 = c(2, 3, 4, 5, 6),
                   y = c(5, 7, 9, 11, 13))

# Fit the model
model <- lm(y ~ x1 + x2, data = data)

# Summary of the model
summary(model)
