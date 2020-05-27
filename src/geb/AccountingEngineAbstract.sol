pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/AccountingEngine.sol
contract AccountingEngineAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address usr) external;
    function removeAuthorization(address usr) external;
    function cdpEngine() public view returns (address);
    function surplusAuctionHouse() public view returns (address);
    function debtAuctionHouse() public view returns (address);
    function settlementSurplusAuctioner() public view returns (address);
    function debtQueue(uint256) public view returns (uint256);
    function activeDebtAuctions(uint256) public view returns (uint256);
    function totalQueuedDebt() public view returns (uint256);
    function totalOnAuctionDebt() public view returns (uint256);
    function activeDebtAuctionsAccumulator() public view returns (uint256);
    function lastSurplusAuctionTime() public view returns (uint256);
    function surplusAuctionDelay() public view returns (uint256);
    function popDebtDelay() public view returns (uint256);
    function initialDebtAuctionAmount() public view returns (uint256);
    function debtAuctionBidSize() public view returns (uint256);
    function debtAuctionBidTarget() public view returns (uint256);
    function surplusAuctionAmountToSell() public view returns (uint256);
    function surplusBuffer() public view returns (uint256);
    function contractEnabled() public view returns (uint256);
    function modifyParameters(bytes32, uint256) external;
    function modifyParameters(bytes32, address) external;
    function pushDebtToQueue(uint256) external;
    function popDebtFromQueue(uint256) external;
    function settleDebt(uint256) external;
    function cancelAuctionedDebtWithSurplus(uint256) external;
    function auctionDebt() external returns (uint256);
    function auctionSurplus() external returns (uint256);
    function disableContract() external;
}
