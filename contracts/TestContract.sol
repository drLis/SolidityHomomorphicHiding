pragma solidity ^0.6.4;

import "./HomomorphicHiding.sol";

contract TestContract
{
	constructor() public
	{
	}

	function testHiding() external pure returns (bool)
	{
		E memory e = HomomorphicHiding.e(3);

		return e.x == 112711660439710606056748659173929673102114977341539408544630613555209775888121
			&& e.y == 25583027980570883691656905877401976406448868254816295069919888960541586679410;
	}

	function e(uint x) external pure returns (uint, uint)
	{
		E memory e = HomomorphicHiding.e(x);
		
		return (e.x, e.y);
	}

	function add(uint x1, uint y1, uint x2, uint y2) external pure (uint x, uint y)
	{
		E memory e1;
		E memory e2;

		e1.x = x1;
		e2.x = x2;

		e1.y = y1;
		e2.y = y2;

		E memory e = HomomorphicHiding.add(e1, e2);

		return (e.x, e.y);
	}

	function equals(uint x1, uint y1, uint x2, uint y2) external pure (bool)
	{
		E memory e1;
		E memory e2;

		e1.x = x1;
		e2.x = x2;

		e1.y = y1;
		e2.y = y2;

		return HomomorphicHiding.equals(e1, e2);
	}

	function mul(uint x, uint y, uint c) external pure (uint x, uint y)
	{
		E memory e;
		e.x = x;
		e.y = y;

		e = HomomorphicHiding.mul(c, e);

		return (e.x, e.y);
	}
}