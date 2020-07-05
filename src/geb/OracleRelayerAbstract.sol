pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/OracleRelayer.sol
abstract contract OracleRelayerAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function safetyCRatio() virtual public view returns (uint256);
    function liquidationCRatio() virtual public view returns (uint256);
    function orcl(bytes32) virtual public view returns (address);
    function collateralTypes(bytes32) virtual public view returns (address, uint256, uint256);
    function cdpEngine() virtual public view returns (address);
    function redemptionRate() virtual public view returns (uint256);
    function redemptionPrice() virtual public returns (uint256);
    function redemptionPriceUpdateTime() virtual public view returns (uint256);
    function contractEnabled() virtual public view returns (uint256);
    function modifyParameters(bytes32, bytes32, address) virtual external;
    function modifyParameters(bytes32, uint256) virtual external;
    function modifyParameters(bytes32, bytes32, uint256) virtual external;
    function updateRedemptionPrice() virtual external;
    function updateCollateralPrice(bytes32) virtual external;
    function disableContract() virtual external;
}
