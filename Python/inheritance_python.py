"""An explaination of inheritance in python."""


class Person:
    """A simple reprentation of a person."""

    def __init__(self, name):
        self._name = name

    def display_name(self):
        """Display name."""
        print(self._name)

    def is_employee(self):
        """Prints if a person is an employee or not"""
        print(f'{self._name} is un-employed')


class Employee(Person):
    """A simple representation of an employee class."""

    def __init__(self, name, id_number, salary, designantion):
        self._id_number = id_number
        self._salary = salary
        self._designation = designantion
        # Person.__init__(self, name)
        super().__init__(name)

    def is_employee(self):
        print(f'{self._name} is employed.')

    def show_salary(self):
        """Displays salary of an employee."""
        print(f'salary of {self._name} : {self._salary}')


print('***********************')

persn = Person('Minhaz')
persn.display_name()
persn.is_employee()


print('***********************')
emp = Employee('Minhaz', 12, 12000, 'Data Engineer - 1')
emp.display_name()
emp.is_employee()
emp.show_salary()
