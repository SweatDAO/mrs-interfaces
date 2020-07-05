pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-auth
abstract contract DSAuthorityAbstract {
    function canCall(address, address, bytes4) virtual public view returns (bool);
}

abstract contract DSAuthAbstract {
    function authority() virtual public view returns (address);
    function owner() virtual public view returns (address);
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
}
