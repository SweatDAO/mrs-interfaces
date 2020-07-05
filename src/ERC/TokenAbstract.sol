pragma solidity ^0.6.7;

// A base ERC-20 abstract class
// https://eips.ethereum.org/EIPS/eip-20
abstract contract TokenAbstract {
    function totalSupply() virtual public view returns (uint256);
    function balanceOf(address) virtual public view returns (uint256);
    function allowance(address, address) virtual public view returns (uint256);
    function approve(address, uint256) virtual public returns (bool);
    function transfer(address, uint256) virtual public returns (bool);
    function transferFrom(address, address, uint256) virtual public returns (bool);
}
