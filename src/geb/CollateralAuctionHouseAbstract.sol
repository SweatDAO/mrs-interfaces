pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/CollateralAuctionHouse.sol
abstract contract CollateralAuctionHouseAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address usr) virtual external;
    function removeAuthorization(address usr) virtual external;
    function bids(uint256) virtual public view returns (uint256, uint256, address, uint48, uint48, address, address, uint256);
    function cdpEngine() virtual public view returns (address);
    function oracleRelayer() virtual public view returns (address);
    function orcl() virtual public view returns (address);
    function bidToMarketPriceRatio() virtual public view returns (uint256);
    function collateralType() virtual public view returns (bytes32);
    function bidIncrease() virtual public view returns (uint256);
    function bidDuration() virtual public view returns (uint48);
    function totalAuctionLength() virtual public view returns (uint48);
    function auctionsStarted() virtual public view returns (uint256);
    function modifyParameters(bytes32, uint256) virtual external;
    function modifyParameters(bytes32, address) virtual external;
    function startAuction(address, address, uint256, uint256, uint256) virtual public returns (uint256);
    function restartAuction(uint256) virtual external;
    function increaseBidSize(uint256, uint256, uint256) virtual external;
    function decreaseSoldAmount(uint256, uint256, uint256) virtual external;
    function settleAuction(uint256) virtual external;
    function terminateAuctionPrematurely(uint256) virtual external;
}
