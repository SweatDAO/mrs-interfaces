pragma solidity ^0.6.7;

abstract contract ChainlinkPriceFeedMedianizerAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function chainlinkAggregator() virtual public view returns (address);
    function periodSize() virtual public view returns (uint256);
    function baseUpdateCallerReward() virtual public view returns (uint256);
    function maxUpdateCallerReward() virtual public view returns (uint256);
    function maxRewardIncreaseDelay() virtual public view returns (uint256);
    function perSecondCallerRewardIncrease() virtual public view returns (uint256);
    function medianPrice() virtual public view returns (uint256);
    function linkAggregatorTimestamp() virtual public view returns (uint256);
    function staleThreshold() virtual public view returns (uint256);
    function treasury() virtual public view returns (address);
    function treasuryAllowance() virtual public view returns (uint256);
    function getCallerReward() virtual public view returns (uint256);
    function lastUpdateTime() virtual public view returns (uint256);
    function multiplier() virtual public view returns (uint256);
    function symbol() virtual public view returns (uint256);
    function modifyParameters(bytes32, uint256) virtual external;
    function getResultWithValidity() virtual public view returns (bytes32, bool);
    function read() virtual public view returns (bytes32);
    function updateResult(address feeReceiver) virtual external;
}
