# (b) Write R program to find the sum of natural numbers using recursive function

sum<-function(n){
    if (n<=1){
        return(n)
    }else{
        return(n+sum(n-1))
    }
}
print("sum of natural numbers")
print(sum(7))