# (a) Write R program for implementation of built-in functions.

# MATH FUNCTIONS
# ABS
x<- -4
print(abs(x)) # It returns the absolute value of input x.
# SQRT
x<- 4
print(sqrt(x)) # It returns the square root of input x.
# CEILING
x<- 4.5
print(ceiling(x)) # It returns the smallest integer which is larger than or equal to x.
# FLOOR
x<- 2.5
print(floor(x)) # It returns the largest integer, which is smaller than or equal to x.
# TRUNC
x<- c(1.2,2.5,8.1)
print(trunc(x)) # It returns the truncate value of input x.
# COS,SIN,TAN
x<- 4
print(cos(x))
print(sin(x))
print(tan(x))
# LOG
x<- 4
print(log(x)) # It returns natural logarithm of input x.
x<- 4
print(log10(x)) # It returns common logarithm of input x.
x<- 4
print(exp(x)) # It returns exponent.

# STRING FUNCTIONS
# SUBSTR
a <- "987654321"
substr(a, 3, 3) # It is used to extract substrings in a character vector
# GREP
st1 <- c('abcd','bdcd','abcdabcd')
pattern<- '^abc'
print(grep(pattern, st1)) # It searches for pattern in x.
# SUB
st1<- "England is beautiful but no the part of EU"
print(sub("England","UK", st1)) # It finds pattern in x and replaces it with replacement
(new) text.
# PASTE
paste('one',2,'three',4,'five') # It concatenates strings after using sep string to separate them.
a<-"Split all the character"
print(strsplit(a, "")) # It splits the elements of character vector x at split point.
st1<- "shuBHAm"
print(tolower(st1))
st1<- "shuBHAm"
print(toupper(st1))
a<-c(0:10, 40)

# STATISTICAL FUNCTIONS
xm<-mean(a) # It is used to find the mean for x object
print(xm)
a<-c(0:10, 40)
xm<-sd(a) # It returns standard deviation of an object.
print(xm)
a<-c(0:10, 40)
xm<-median(a) # It returns median.
print(xm)
a<-c(0:10, 40)
xm<-range(a) # It returns range.
print(xm)
a<-c(0:10, 40)
xm<-sum(a) # It returns sum.
print(xm)
a<-c(0:10, 40)
xm<-min(a) # It returns minimum value.
print(xm)
a<-c(0:10, 40)
xm<-max(a) # It returns maximum value
print(xm)