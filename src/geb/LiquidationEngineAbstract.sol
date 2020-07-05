pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/LiquidationEngine.sol
abstract contract LiquidationEngineAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function connectCDPSaviour(address) virtual external;
    function disconnectCDPSaviour(address) virtual external;
    function collateralTypes(bytes32) virtual public view returns (address, uint256, uint256);
    function cdpSaviours(bytes32,address) virtual public view returns (address);
    function protectCDP(bytes32, address, address) virtual external;
    function contractEnabled() virtual public view returns (uint256);
    function cdpEngine() virtual public view returns (address);
    function accountingEngine() virtual public view returns (address);
    function modifyParameters(bytes32, address) virtual external;
    function modifyParameters(bytes32, bytes32, uint256) virtual external;
    function modifyParameters(bytes32, bytes32, address) virtual external;
    function liquidateCDP(bytes32, address) virtual external returns (uint256);
    function disableContract() virtual external;
}
