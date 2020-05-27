pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/SettlementSurplusAuctioner.sol
contract SettlementSurplusAuctionerAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function accountingEngine() public view returns (address);
    function surplusAuctionHouse() public view returns (address);
    function cdpEngine() public view returns (address);
    function contractEnabled() public view returns (uint256);
    function lastSurplusAuctionTime() public view returns (uint256);
    function modifyParameters(bytes32, address) external;
    function auctionSurplus() external returns (uint256);
}
