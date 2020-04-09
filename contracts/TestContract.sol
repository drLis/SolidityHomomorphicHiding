pragma solidity ^0.6.4;

import "./HomomorphicHiding.sol";

contract TestContract
{
	using HomomorphicHiding for E;
	
	constructor() public
	{
	}

	function testHiding() external pure returns (bool)
	{
		E memory e = HomomorphicHiding.e(1);

		return e.x == HomomorphicHiding.g_x
			&& e.y == HomomorphicHiding.g_y;
	}

	function e(uint x) external pure returns (uint, uint)
	{
		E memory e = HomomorphicHiding.e(x);
		
		return (e.x, e.y);
	}

	function add(uint x1, uint y1, uint x2, uint y2) external pure returns (uint x, uint y)
	{
		E memory e1;
		E memory e2;

		e1.x = x1;
		e2.x = x2;

		e1.y = y1;
		e2.y = y2;

		E memory e = e1.add(e2);

		return (e.x, e.y);
	}

	function equals(uint x1, uint y1, uint x2, uint y2) external pure returns (bool)
	{
		E memory e1;
		E memory e2;

		e1.x = x1;
		e2.x = x2;

		e1.y = y1;
		e2.y = y2;

		return e1.equals(e2);
	}

	function mul(uint x, uint y, uint c) external pure returns (uint, uint)
	{
		E memory e;
		e.x = x;
		e.y = y;

		e = e.mul(c);

		return (e.x, e.y);
	}
}