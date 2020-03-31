pragma solidity ^0.6.4;

import "./_lib/elliptic-curve-solidity/contracts/EllipticCurve.sol";

struct E
{
	uint x;
	uint y;
}

library HomomorphicHiding
{
	function e(uint x) internal pure returns (E memory hh)
	{
		(hh.x, hh.y) = EllipticCurve.ecMul(x, g_x, g_y, a, p);
	}

	function add(E memory e1, E memory e2) internal pure returns (E memory hh)
	{

	}

	function equals(E memory e1, E memory e2) internal pure returns (bool)
	{
		return e1.x == e2.x && e1.y == e2.y;
	}

	function mul(uint k, E memory e) internal pure returns (E memory hh)
	{

	}

	uint internal constant g_x = 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798;
	uint internal constant g_y = 0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8;
	uint internal constant a = 0;
	uint internal constant b = 7;
	uint internal constant p = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F;
}