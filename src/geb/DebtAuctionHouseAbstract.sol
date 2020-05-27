pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/DebtAuctionHouse.sol
contract DebtAuctionHouseAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function bids(uint256) public view returns (uint256, uint256, address, uint48, uint48);
    function cdpEngine() public view returns (address);
    function protocolToken() public view returns (address);
    function accountingEngine() public view returns (address);
    function bidDecrease() public view returns (uint256);
    function amountSoldIncrease() public view returns (uint256);
    function bidDuration() public view returns (uint48);
    function totalAuctionLength() public view returns (uint48);
    function auctionsStarted() public view returns (uint256);
    function contractEnabled() public view returns (uint256);
    function modifyParameters(bytes32, uint256) external;
    function modifyParameters(bytes32, address) external;
    function startAuction(address, uint256, uint256) external returns (uint256);
    function restartAuction(uint256) external;
    function decreaseSoldAmount(uint256, uint256, uint256) external;
    function settleAuction(uint256) external;
    function disableContract() external;
    function terminateAuctionPrematurely(uint256) external;
}
