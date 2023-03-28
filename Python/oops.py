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

    def number_of_employees(self):
        """Prints number of employees by counting the number of instances
        created.
        """
        print('Number of employees: ', Employee.emp_count)


emp1 = Employee('Minhaz Alam', 69000)
emp1.greet_employee()

emp2 = Employee('Manisha Rao', 68000)
emp2.greet_employee()

emp2.number_of_employees()

emp1.number_of_employees()
