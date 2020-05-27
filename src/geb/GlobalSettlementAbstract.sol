pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/GlobalSettlement.sol
contract GlobalSettlementAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function cdpEngine() public view returns (address);
    function liquidationEngine() public view returns (address);
    function accountingEngine() public view returns (address);
    function coinSavingsAccount() public view returns (address);
    function rateSetter() public view returns (address);
    function oracleRelayer() public view returns (address);
    function stabilityFeeTreasury() public view returns (address);
    function contractEnabled() public view returns (uint256);
    function shutdownTime() public view returns (uint256);
    function shutdownCooldown() public view returns (uint256);
    function outstandingCoinSupply() public view returns (uint256);
    function finalCoinPerCollateralPrice(bytes32) public view returns (uint256);
    function collateralShortfall(bytes32) public view returns (uint256);
    function collateralTotalDebt(bytes32) public view returns (uint256);
    function collateralCashPrice(bytes32) public view returns (uint256);
    function coinBag(address) public view returns (uint256);
    function coinsUsedToRedeem(bytes32, address) public view returns (uint256);
    function WAD() public view returns (uint256);
    function RAY() public view returns (uint256);
    function modifyParameters(bytes32, address) external;
    function modifyParameters(bytes32, uint256) external;
    function shutdownSystem() external;
    function freezeCollateralType(bytes32) external;
    function fastTrackAuction(bytes32, uint256) external;
    function processCDP(bytes32, address) external;
    function freeCollateral(bytes32) external;
    function setOutstandingCoinSupply() external;
    function calculateCashPrice(bytes32) external;
    function prepareCoinsForRedeeming(uint256) external;
    function redeemCollateral(bytes32, uint256) external;
}
