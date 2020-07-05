pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-value/blob/master/src/value.sol
abstract contract DSValueAbstract {
    function getResultWithValidity() virtual public view returns (bytes32, bool);
    function read() virtual public view returns (bytes32);
    function updateResult(bytes32) virtual public;
    function restartValue() virtual public;
    function authority() virtual public view returns (address);
    function owner() virtual public view returns (address);
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
}
