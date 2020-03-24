pragma solidity ^0.5.0;


interface IHomomorphicHiding
{
    constructor(uint x) public;

    function e(uint x) public pure returns (IHomomorphicHiding);

    function mul(uint x) public pure returns (IHomomorphicHiding);

    function add(IHomomorphicHiding e) public pure returns (IHomomorphicHiding);
}