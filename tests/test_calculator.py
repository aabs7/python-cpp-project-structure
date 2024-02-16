import pytest
import module1
import module2


def test_addition():
    assert module1.add(2, 3) == 5


def test_multiplication():
    assert module1.multiplication(2, 3) == 6


def test_addition_module2():
    assert module2.add(2, 3) == 5
