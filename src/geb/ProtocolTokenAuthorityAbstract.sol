pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb-protocol-token-authority/blob/master/src/ProtocolTokenAuthority.sol
contract ProtocolTokenAuthorityAbstract {
    function root() public returns (address);
    function setRoot(address) public;
    function authorizedAccounts(address) public returns (uint256);
    function addAuthorization(address) public;
    function removeAuthorization(address) public;
    function canCall(address, address, bytes4) public returns (bool);
}
