pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/ds-value/blob/master/src/value.sol
contract DSValueAbstract {
    function isValid() public view returns (bool);
    function result() public view returns (bytes32);
    function getResultWithValidity() public view returns (bytes32, bool);
    function read() public view returns (bytes32);
    function updateResult(bytes32) public;
    function restartValue() public;
    function authority() public view returns (address);
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}
