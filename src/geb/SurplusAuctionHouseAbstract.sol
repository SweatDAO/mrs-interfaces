pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/SurplusAuctionHouse.sol
abstract contract SurplusAuctionHouseAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function bids(uint256) virtual public view returns (uint256, uint256, address, uint48, uint48);
    function cdpEngine() virtual public view returns (address);
    function protocolToken() virtual public view returns (address);
    function bidIncrease() virtual public view returns (uint256);
    function bidDuration() virtual public view returns (uint48);
    function totalAuctionLength() virtual public view returns (uint48);
    function auctionsStarted() virtual public view returns (uint256);
    function contractEnabled() virtual public view returns (uint256);
    function modifyParameters(bytes32, uint256) virtual external;
    function startAuction(uint256, uint256) virtual external returns (uint256);
    function restartAuction(uint256) virtual external;
    function increaseBidSize(uint256, uint256, uint256) virtual external;
    function settleAuction(uint256) virtual external;
    function disableContract(uint256) virtual external;
    function terminateAuctionPrematurely(uint256) virtual external;
}
