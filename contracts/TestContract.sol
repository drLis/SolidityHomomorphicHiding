pragma solidity ^0.6.4;

import "./HomomorphicHiding.sol";

contract TestContract
{
	E public stru;
	constructor() public
	{
		stru = HomomorphicHiding.e(3);
	}
}