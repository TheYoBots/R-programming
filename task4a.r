# (a) Write R program to generate Fibonacci series using recursive function.

# Program to display the Fibonacci sequence up to n-th term using recursive functions
recur_fibo <- function(n) {
    if(n <= 1) {
        return(n)
    } else {
        return(recur_fibo(n-1) + recur_fibo(n-2))
    }
}

# take input from the user
nterms = as.integer(readline(prompt="How many terms? "))
# check if the number of terms is valid
if(nterms <= 0) {
    print("Plese enter a positive integer")
} else {
    print("Fibonacci sequence:")
    for(i in 0:(nterms-1)) {
        print(recur_fibo(i))
    }
}