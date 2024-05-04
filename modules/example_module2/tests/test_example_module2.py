import pytest
import example_module2
import example_module1


def test_addition_module2():
    assert example_module2.add_module2(2, 3) == example_module1.add_module1(2, 3)

def test_multiplication_module2():
    assert example_module2.multiplication_module2(2, 3) == 6
