"""A file to explain Object Oriented Programming."""


class Employee:
    """A simple representation of an employee."""

    # class variable
    emp_count = 0

    def __init__(self, name, salary):
        self._name = name
        self._salary = salary
        Employee.emp_count += 1

    def greet_employee(self):
        """A greeting message for the employee."""
        print(f'Good Morning, {self._name} !')

    @staticmethod
    def number_of_employees():
        """Prints number of employees by counting the number of instances
        created.
        """
        print('Number of employees: ', Employee.emp_count)


emp1 = Employee('Minhaz Alam', 69000)
emp1.greet_employee()

emp2 = Employee('Manisha Rao', 68000)
emp2.greet_employee()

# emp2.number_of_employees()

# emp1.number_of_employees()


# Print instance variables of an object
print(emp1.emp_count)
print(emp1.emp_count)

emp3 = Employee('Kishan Dewangan', 70000)

emp1.emp_count = 12
emp2.emp_count = 15

print(emp1.emp_count)
print(emp2.emp_count)

Employee.number_of_employees()
