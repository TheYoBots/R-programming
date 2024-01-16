# (a) Use the R -Studio environment to code OLS models.
# (b) Review the methodology to validate the model and predict the dependent 
#     variable for a set of given independent variables.
# (c) Use R graphics functions to visualize the results generated with the
#     model.

# create dataset
df <- data.frame(hours=c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
                 score=c(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89))
# view first six rows of dataset
print(head(df))
install.packages('ggplot2') # for downloading open source package ggplot
library(ggplot2)
# create scatter plot
print(ggplot(df, aes(x=hours, y=score)) + geom_point(size=2))
# fit simple linear regression model
linear_model <- lm(score~hours, df)
install.packages("Metrics") # Install & load Metrics package
library("Metrics")
print(mse(df$score,predict(linear_model,df))) # Calculate MSE - mean squared error
print(rmse(df$score,predict(linear_model,df))) # Calculate MSE - root mean squared error
print(predict( linear_model, newdata = data.frame(hours=c(15,16,17)) ))