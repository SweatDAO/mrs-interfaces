pragma solidity ^0.5.15;

// https://github.com/sweatdao/flipper-mom/blob/master/src/FlipperMom.sol
contract FlipperMomAbstract {
    function owner() public returns (address);
    function setOwner(address) external;
    function authority() public returns (address);
    function setAuthority(address) external;
    function cat() public returns (address);
    function rely(address) external;
    function deny(address) external;
}
