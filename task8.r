# Write an R program to create a Data Frame which contain details of 5
# employees and display summary of the data.

#Create a dataframe with employee details
Employees = data.frame(Name=c("Ram","Ravi","Manasa", "Aadhya","Virat"),
                       Gender=c("M","M","F","F","M"),
                       Age=c(23,22,25,26,32),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Details of the employees:")
print(Employees)