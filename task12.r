# (a) Use R -Studio environment to code Logistic Regression models.
# (b) Review the methodology to validate the model and predict the dependent
#     variable for a set of given independent variables.
# (c) Use R graphics functions to visualize the results generated with the
#     regression model.

df = read.csv('C:\\Users\\sunil\\Desktop\\R\\mtcars.csv')
# fit logistic regression model
model <- glm(vs ~ hp, data=mtcars, family=binomial)
# define new data frame that contains predictor variable
newdata <- data.frame(hp=seq(min(mtcars$hp), max(mtcars$hp),len=500))
# use fitted model to predict values of vs
newdata$vs = predict(model, newdata, type="response")
print(newdata$vs)
# plot logistic regression curve
plot(vs ~ hp, data=mtcars, col="red")
lines(vs ~ hp, newdata, lwd=2)