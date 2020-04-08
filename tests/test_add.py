import pytest
import brownie

def test_add(test):
	e1 = test.e(1)
	e2 = test.e(2)
	e3 = test.e(3)
	sum = test.add(e1[0], e1[1], e2[0], e2[1])
	assert e3[0] == sum[0] and e3[1] == sum[1]