pragma solidity ^0.6.4;

import "./lib/elliptic-curve-solidity/contracts/curves/EllipticCurve.sol";

struct E
{
	uint x;
	uint y;
}

library HomomorphicHiding
{
	function e(uint x) internal pure returns (E memory hh)
	{
		(hh.x, hh.y) = EllipticCurve.multipleGeneratorByScalar(x);
	}

	function add(E memory e1, E memory e2) internal pure returns (E memory hh)
	{

	}

	function equals(E memory e1, E memory e2) internal pure returns (bool)
	{

	}

	function mul(uint k, E memory e) internal pure returns (E memory hh)
	{

	}
}