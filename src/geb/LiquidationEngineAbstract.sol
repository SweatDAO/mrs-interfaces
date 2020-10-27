pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/LiquidationEngine.sol
abstract contract LiquidationEngineAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function connectSAFESaviour(address) virtual external;
    function disconnectSAFESaviour(address) virtual external;
    function collateralTypes(bytes32) virtual public view returns (address, uint256, uint256);
    function safeSaviours(bytes32,address) virtual public view returns (address);
    function protectSAFE(bytes32, address, address) virtual external;
    function contractEnabled() virtual public view returns (uint256);
    function safeEngine() virtual public view returns (address);
    function accountingEngine() virtual public view returns (address);
    function modifyParameters(bytes32, address) virtual external;
    function modifyParameters(bytes32, bytes32, uint256) virtual external;
    function modifyParameters(bytes32, bytes32, address) virtual external;
    function liquidateSAFE(bytes32, address) virtual external returns (uint256);
    function removeCoinsFromAuction(uint256) virtual external; 
    function disableContract() virtual external;
}
