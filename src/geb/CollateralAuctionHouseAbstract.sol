pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/CollateralAuctionHouse.sol
abstract contract EnglishCollateralAuctionHouseAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address usr) virtual external;
    function removeAuthorization(address usr) virtual external;
    function bids(uint256) virtual public view returns (uint256, uint256, address, uint48, uint48, address, address, uint256);
    function safeEngine() virtual public view returns (address);
    function oracleRelayer() virtual public view returns (address);
    function orcl() virtual public view returns (address);
    function bidToMarketPriceRatio() virtual public view returns (uint256);
    function collateralType() virtual public view returns (bytes32);
    function bidIncrease() virtual public view returns (uint256);
    function bidDuration() virtual public view returns (uint48);
    function totalAuctionLength() virtual public view returns (uint48);
    function auctionsStarted() virtual public view returns (uint256);
    function AUCTION_TYPE() virtual public view returns (bytes32);
    function AUCTION_HOUSE_TYPE() virtual public view returns (bytes32);
    function modifyParameters(bytes32, uint256) virtual external;
    function modifyParameters(bytes32, address) virtual external;
    function startAuction(address, address, uint256, uint256, uint256) virtual public returns (uint256);
    function restartAuction(uint256) virtual external;
    function increaseBidSize(uint256, uint256, uint256) virtual external;
    function decreaseSoldAmount(uint256, uint256, uint256) virtual external;
    function settleAuction(uint256) virtual external;
    function terminateAuctionPrematurely(uint256) virtual external;
    function bidAmount(uint256) virtual public view returns (uint256);
    function remainingAmountToSell(uint256) virtual public view returns (uint256);
    function forgoneCollateralReceiver(uint256) virtual public view returns (address);
    function amountToRaise(uint256) virtual public view returns (uint256);
    function raisedAmount(uint256) virtual public view returns (uint256);
}

abstract contract FixedDiscountCollateralAuctionHouseAbtract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function bids(uint256) virtual public view returns (uint256, uint256, uint256, uint256, uint48, address, address);
    function lastReadRedemptionPrice() virtual public view returns (uint256);
    function safeEngine() virtual public view returns (address);
    function oracleRelayer() virtual public view returns (address);
    function collateralOSM() virtual public view returns (address);
    function collateralMedian() virtual public view returns (address);
    function systemCoinOracle() virtual public view returns (address);
    function discount() virtual public view returns (uint256);
    function lowerCollateralMedianDeviation() virtual public view returns (uint256);
    function upperCollateralMedianDeviation() virtual public view returns (uint256);
    function lowerSystemCoinMedianDeviation() virtual public view returns (uint256);
    function upperSystemCoinMedianDeviation() virtual public view returns (uint256);
    function minSystemCoinMedianDeviation() virtual public view returns (uint256);
    function collateralType() virtual public view returns (bytes32);
    function minimumBid() virtual public view returns (uint256);
    function totalAuctionLength() virtual public view returns (uint48);
    function auctionsStarted() virtual public view returns (uint256);
    function AUCTION_TYPE() virtual public view returns (bytes32);
    function AUCTION_HOUSE_TYPE() virtual public view returns (bytes32);
    function modifyParameters(bytes32, uint256) virtual external;
    function modifyParameters(bytes32, address) virtual external;
    function getDiscountedCollateralPrice(uint256, uint256, uint256, uint256) virtual public view returns (uint256);
    function getFinalTokenPrices(uint256) virtual public view returns (uint256, uint256);
    function getSystemCoinCeilingDeviatedPrice(uint256) virtual public view returns (uint256);
    function getSystemCoinFloorDeviatedPrice(uint256) virtual public view returns (uint256);
    function getSystemCoinMarketPrice() virtual public view returns (uint256);
    function getCollateralMedianPrice() virtual public view returns (uint256);
    function getFinalBaseCollateralPrice(uint256, uint256) virtual public view returns (uint256);
    function startAuction(address, address, uint256, uint256, uint256) virtual public returns (uint256);
    function getCollateralBought(uint id, uint wad) virtual external returns (uint256);
    function getApproximateCollateralBought(uint id, uint wad) virtual external returns (uint256);
    function buyCollateral(uint, uint) virtual external;
    function terminateAuctionPrematurely(uint256) virtual external;
    function bidAmount(uint) virtual public view returns (uint256);
    function remainingAmountToSell(uint) virtual public view returns (uint256);
    function forgoneCollateralReceiver(uint) virtual public view returns (address);
    function amountToRaise(uint) virtual public view returns (uint256);
    function raisedAmount(uint256) virtual public view returns (uint256);
}
