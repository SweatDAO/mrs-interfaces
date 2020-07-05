pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/GlobalSettlement.sol
abstract contract GlobalSettlementAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function cdpEngine() virtual public view returns (address);
    function liquidationEngine() virtual public view returns (address);
    function accountingEngine() virtual public view returns (address);
    function coinSavingsAccount() virtual public view returns (address);
    function rateSetter() virtual public view returns (address);
    function oracleRelayer() virtual public view returns (address);
    function stabilityFeeTreasury() virtual public view returns (address);
    function contractEnabled() virtual public view returns (uint256);
    function shutdownTime() virtual public view returns (uint256);
    function shutdownCooldown() virtual public view returns (uint256);
    function outstandingCoinSupply() virtual public view returns (uint256);
    function finalCoinPerCollateralPrice(bytes32) virtual public view returns (uint256);
    function collateralShortfall(bytes32) virtual public view returns (uint256);
    function collateralTotalDebt(bytes32) virtual public view returns (uint256);
    function collateralCashPrice(bytes32) virtual public view returns (uint256);
    function coinBag(address) virtual public view returns (uint256);
    function coinsUsedToRedeem(bytes32, address) virtual public view returns (uint256);
    function WAD() virtual public view returns (uint256);
    function RAY() virtual public view returns (uint256);
    function modifyParameters(bytes32, address) virtual external;
    function modifyParameters(bytes32, uint256) virtual external;
    function shutdownSystem() virtual external;
    function freezeCollateralType(bytes32) virtual external;
    function fastTrackAuction(bytes32, uint256) virtual external;
    function processCDP(bytes32, address) virtual external;
    function freeCollateral(bytes32) virtual external;
    function setOutstandingCoinSupply() virtual external;
    function calculateCashPrice(bytes32) virtual external;
    function prepareCoinsForRedeeming(uint256) virtual external;
    function redeemCollateral(bytes32, uint256) virtual external;
}
