pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-thing
abstract contract DSThingAbstract {
    function authority() virtual public view returns (address);
    function owner() virtual public view returns (address);
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
}
