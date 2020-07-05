pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/SettlementSurplusAuctioneer.sol
abstract contract SettlementSurplusAuctioneerAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function accountingEngine() virtual public view returns (address);
    function surplusAuctionHouse() virtual public view returns (address);
    function cdpEngine() virtual public view returns (address);
    function contractEnabled() virtual public view returns (uint256);
    function lastSurplusAuctionTime() virtual public view returns (uint256);
    function modifyParameters(bytes32, address) virtual external;
    function auctionSurplus() virtual external returns (uint256);
}
