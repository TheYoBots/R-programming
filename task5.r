# Write a R program to create a list of random numbers in normal distribution
# and count the occurrences of each value.

n = floor(rnorm(1000, 50, 100))
print('List of random numbers in normal distribution:')
print(n)
t = table(n)
print("Count occurrences of each value:")
print(t)