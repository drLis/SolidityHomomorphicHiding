import pytest

@pytest.fixture(scope="function", autouse=True)
def isolate(fn_isolation):
    pass

@pytest.fixture(scope="module")
def test(TestContract, accounts):
    return accounts[0].deploy(TestContract)