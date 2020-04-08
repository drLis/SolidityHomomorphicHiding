import pytest
import brownie

def test_equals(test):
	e1 = test.e(2)
	e2 = test.e(1 + 1)
	assert e1[0] == e2[0] and e1[1] == e2[1]