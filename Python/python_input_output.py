# Declare & Assign Variable

int_var = 10
float_var = 18.25
string_var = 'dataengineer'
boolean_var = True

# Take input from the user through terminal
age = int(input("Enter your age: ")) # -> return str type
# age = int(age)

# Typecasting in python
int_var = int_var + int('10')
print(int_var)

float_var=float_var+int_var
print(float_var)

# Function in python for Output
print(type(age))

# Print variable values
print("Value of int_var:", int_var)
print("Value of float_var:", float_var)
print("Value of string_var:", string_var)
print("Value of boolean_var:", boolean_var)

# Print datatypes of all the variables
print("Type of int_var:", type(int_var))
print("Type of float_var:", type(float_var))
print("Type of string_var:", type(string_var))
print("Type of boolean_var:", type(boolean_var))