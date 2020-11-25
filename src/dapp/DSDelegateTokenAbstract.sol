pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-token/blob/master/src/delegate.sol
abstract contract DSDelegateTokenAbstract {
    function name() virtual public view returns (bytes32);
    function symbol() virtual public view returns (bytes32);
    function decimals() virtual public view returns (uint256);
    function totalSupply() virtual external view returns (uint256);
    function balanceOf(address) virtual external view returns (uint256);
    function transfer(address, uint256) virtual external returns (bool);
    function allowance(address, address) virtual external view returns (uint256);
    function approve(address, uint256) virtual external returns (bool);
    function approve(address) virtual public returns (bool);
    function transferFrom(address, address, uint256) virtual external returns (bool);
    function delegate(address) virtual public;
    function delegateBySig(address, uint256, uint256, uint8, bytes32, bytes32) virtual public;
    function getCurrentVotes(address) virtual external view returns (uint256);
    function getPriorVotes(address, uint256) virtual public view returns (uint256);
    function push(address, uint256) virtual public;
    function pull(address, uint256) virtual public;
    function move(address, address, uint256) virtual public;
    function mint(uint256) virtual public;
    function mint(address,uint) virtual public;
    function burn(uint256) virtual public;
    function burn(address,uint) virtual public;
    function setName(bytes32) virtual public;
    function authority() virtual public view returns (address);
    function owner() virtual public view returns (address);
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
}
