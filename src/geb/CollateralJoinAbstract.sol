pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/BasicTokenAdapters.sol
contract CollateralJoinAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function cdpEngine() public view returns (address);
    function collateralType() public view returns (bytes32);
    function collateral() public view returns (address);
    function decimals() public view returns (uint256);
    function contractEnabled() public view returns (uint256);
    function disableContract() external;
    function join(address, uint256) external;
    function exit(address, uint256) external;
}
