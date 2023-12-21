# Write R program to find the given number is prime or not.

num = as.integer(readline(prompt = "Enter a number: "))
# num = 15
isPrime = 0
if (num > 1) {
    isPrime = 1
    for (i in 2: (num - 1)) {
        if ((num %% i) == 0) {
            isPrime = 0
            break
        }
    }
}
if (num == 2) isPrime = 1
if (isPrime == 1) {
    print(paste(num, " is a prime number"))
} else {
    print(paste(num, " is not a prime number"))
}
