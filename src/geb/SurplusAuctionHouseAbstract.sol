pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/SurplusAuctionHouse.sol
contract SurplusAuctionHouseAbstract {
    // SurplusAuctionHouse with auctions
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function bids(uint256) public view returns (uint256, uint256, address, uint48, uint48);
    function cdpEngine() public view returns (address);
    function protocolToken() public view returns (address);
    function bidIncrease() public view returns (uint256);
    function bidDuration() public view returns (uint48);
    function totalAuctionLength() public view returns (uint48);
    function auctionsStarted() public view returns (uint256);
    function contractEnabled() public view returns (uint256);
    function modifyParameters(bytes32, uint256) external;
    function startAuction(uint256, uint256) external returns (uint256);
    function restartAuction(uint256) external;
    function increaseBidSize(uint256, uint256, uint256) external;
    function settleAuction(uint256) external;
    function disableContract(uint256) external;
    //SurplusAuctionHouse with DEX buying and burning
    function mutex() public view returns (uint8);
    function swapPath(uint) public view returns (address);
    function dex() public view returns (address);
    function leftoverReceiver() public view returns (address);
    function settlementSurplusAuctioner() public view returns (address);
    function modifyParameters(bytes32, address) external;
}
