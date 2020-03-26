pragma solidity ^0.6.4;

import "./_lib/elliptic-curve-solidity/contracts/curves/EllipticCurve.sol";

struct E
{
	uint x;
	uint y;
}

library HomomorphicHiding
{
	function e(uint x) external pure returns (struct E)
	{

	}

	function add(struct E e1, struct E e2) external pure returns (struct E)
	{

	}

	function equals(struct E e1, struct E e2) external pure returns (bool)
	{

	}

	function mul(uint k, struct E e) external pure returns (struct E)
	{
		
	}
}