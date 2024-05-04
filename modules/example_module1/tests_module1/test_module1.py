import pytest
import example_module1


def test_addition_module1():
    assert example_module1.add_module1(2, 3) == 5


def test_multiplication_module1():
    assert example_module1.multiplication_module1(2, 3) == 6
