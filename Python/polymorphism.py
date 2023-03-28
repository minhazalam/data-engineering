"""Explains polymorphism in python language."""

from math import pi


class Shape:
    """A base class for the representation of shape."""
    def __init__(self, name):
        self._name = name

    def area(self):
        pass

    def which_shape(self):
        print('Base class')


class Square(Shape):
    """A simple representation of square."""

    def __init__(self, name, length):
        super().__init__(name)
        self._length = length

    def area(self):
        print(f'Area of {self._name} : {self._length**2}')

    def which_shape(self):
        print(f'Shape : {self._name}')


class Circle(Shape):
    """A simple represenation of a circle."""

    def __init__(self, name, radius):
        super().__init__(name)
        self._radius = radius

    def area(self):
        print(f'Area of {self._name} : {pi * (self._radius**2)}')


sq = Square('square', 4)
sq.area()
sq.which_shape()

cl = Circle('circle', 4)
cl.area()
cl.which_shape()
