import pytest
import module1


def test_addition():
    assert module1.add(2,3) == 5

def test_multiplication():
    assert module1.multiplication(2,3) == 6
