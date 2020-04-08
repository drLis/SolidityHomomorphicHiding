import pytest
import brownie

def test_mul(test):
	e1 = test.e(1)
	k = 777
	e2 = test.e(1 * 777)
	prod = test.mul(e1[0], e1[1], k)
	assert e2[0] == prod[0] and e2[1] == prod[1]