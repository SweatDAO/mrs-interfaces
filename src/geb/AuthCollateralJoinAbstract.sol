pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb-deploy/blob/master/src/AdvancedTokenAdapters.sol
contract AuthCollateralJoinAbstract {
    function cdpEngine() public view returns (address);
    function collateralType() public view returns (bytes32);
    function collateral() public view returns (address);
    function decimals() public view returns (uint256);
    function contractEnabled() public view returns (uint256);
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) public;
    function removeAuthorization(address) public;
    function disableContract() external;
    function join(address, uint256) public;
    function exit(address, uint256) public;
}
