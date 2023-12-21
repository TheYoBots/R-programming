# Write an R program to implement Data preprocessing techniques.
# Data preprocessing is the initial phase of Machine Learning where data is prepared for machine
# learning models. This part is crucial and needs to be performed properly and systematically. If
# not, we will end up building models that are not accurate for their purpose.
#
# Steps in Data Preprocessing:
# Step 1: Importing the Dataset
# Step 2: Handling the Missing Data
# Step 3: Encoding Categorical Data.
# Step 4: Splitting the Dataset into the Training and Test sets
# Step 5: Applying Feature Scaling on training_set and test_set

Dataset = read.csv('C:\\Users\\sunil\\Desktop\\R\\data.csv')
View(Dataset)
Dataset$Age=ifelse(is.na(Dataset$Age), ave(Dataset$Age, FUN = function (x)mean(x, na.rm =TRUE)), Dataset$Age)
View(Dataset)
Dataset$Salary = ifelse(is.na(Dataset$Salary), ave(Dataset$Salary, FUN = function (x)mean(x, na.rm = TRUE)), Dataset$Salary)
View(Dataset)
Dataset$Country = factor(Dataset$Country, levels = c('France','Spain','Germany'), labels = c(1.0, 2.0 , 3.0 ))
Dataset$Purchased = factor(Dataset$Purchased, levels = c('No', 'Yes'), labels = c(0, 1))
Dataset$Purchased[is.na(Dataset$Purchased)] <- 0
# as.factor(Dataset$Purchased)
library(caTools) # required library for data splition
set.seed(300)
split = sample.split(Dataset$Purchased, SplitRatio = 0.8) # returns true if observation goes to the Training set and false if observation goes to the test set.
# Creating the training set and test set separately
training_set = subset(Dataset, split == TRUE)
test_set = subset(Dataset, split == FALSE)
print(training_set)
print(test_set)
training_set[, 2:3] = scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])
print(training_set)
print(test_set)