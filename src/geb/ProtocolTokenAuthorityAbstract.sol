pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb-protocol-token-authority/blob/master/src/ProtocolTokenAuthority.sol
abstract contract ProtocolTokenAuthorityAbstract {
    function root() virtual public returns (address);
    function setRoot(address) virtual public;
    function authorizedAccounts(address) virtual public returns (uint256);
    function addAuthorization(address) virtual public;
    function removeAuthorization(address) virtual public;
    function canCall(address, address, bytes4) virtual public returns (bool);
}
