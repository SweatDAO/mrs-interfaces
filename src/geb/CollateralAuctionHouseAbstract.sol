pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/CollateralAuctionHouse.sol
contract CollateralAuctionHouseAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address usr) external;
    function removeAuthorization(address usr) external;
    function bids(uint256) public view returns (uint256, uint256, address, uint48, uint48, address, address, uint256);
    function cdpEngine() public view returns (address);
    function oracleRelayer() public view returns (address);
    function orcl() public view returns (address);
    function bidToMarketPriceRatio() public view returns (uint256);
    function collateralType() public view returns (bytes32);
    function bidIncrease() public view returns (uint256);
    function bidDuration() public view returns (uint48);
    function totalAuctionLength() public view returns (uint48);
    function auctionsStarted() public view returns (uint256);
    function modifyParameters(bytes32, uint256) external;
    function modifyParameters(bytes32, address) external;
    function startAuction(address, address, uint256, uint256, uint256) public returns (uint256);
    function restartAuction(uint256) external;
    function increaseBidSize(uint256, uint256, uint256) external;
    function decreaseSoldAmount(uint256, uint256, uint256) external;
    function settleAuction(uint256) external;
    function terminateAuctionPrematurely(uint256) external;
}
