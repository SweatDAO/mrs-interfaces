pragma solidity ^0.5.15;

// https://github.com/sweatdao/meta-authority/blob/master/src/MetaAuthority.sol
contract MetaAuthorityAbstract {
    function root() public returns (address);
    function setRoot(address) public;
    function wards(address) public returns (uint256);
    function rely(address) public;
    function deny(address) public;
    function canCall(address, address, bytes4) public returns (bool);
}
