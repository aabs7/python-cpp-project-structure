import pytest
import example_module1
import example_module2
import example_module_cpp


# We can have a separate test folder outside to test all the modules
def test_addition_combined():
    assert example_module1.add_module1(2, 3) == 5
    assert example_module2.add_module2(2, 3) == 5

def test_multiplication_combined():
    assert example_module1.multiplication_module2(2, 3) == 6
    assert example_module_cpp.multiply(9, 9) == 81
