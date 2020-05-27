pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/BasicTokenAdapters.sol
contract ETHJoinAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address usr) external;
    function removeAuthorization(address usr) external;
    function cdpEngine() public view returns (address);
    function collateralType() public view returns (bytes32);
    function contractEnabled() public view returns (uint256);
    function disableContract() external;
    function join(address) external payable;
    function exit(address, uint256) external;
}
