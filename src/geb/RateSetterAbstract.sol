pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/AccountingEngine.sol
abstract contract RateSetterAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function contractEnabled() virtual public view returns (uint256);
    function latestMarketPrice() virtual public view returns (uint256);
    function lastUpdateTime() virtual public view returns (uint256);
    function updateRateDelay() virtual public view returns (uint256);
    function baseUpdateCallerReward() virtual public view returns (uint256);
    function maxUpdateCallerReward() virtual public view returns (uint256);
    function perSecondCallerRewardIncrease() virtual public view returns (uint256);
    function orcl() virtual public view returns (address);
    function oracleRelayer() virtual public view returns (address);
    function treasury() virtual public view returns (address);
    function pidValidator() virtual public view returns (address);
    function modifyParameters(bytes32, address) virtual external;
    function modifyParameters(bytes32, uint256) virtual external;
    function disableContract() virtual external;
    function treasuryAllowance() virtual public view returns (uint256);
    function getCallerReward() virtual public view returns (uint256);
    function updateRate(uint256, address) virtual public;
    function getRedemptionAndMarketPrices() virtual public returns (uint256, uint256);
}
