pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/LiquidationEngine.sol
contract LiquidationEngineAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function connectCDPSaviour(address) external;
    function disconnectCDPSaviour(address) external;
    function collateralTypes(bytes32) public view returns (address, uint256, uint256);
    function cdpSaviours(bytes32,address) public view returns (address);
    function protectCDP(bytes32, address, address) external;
    function contractEnabled() public view returns (uint256);
    function cdpEngine() public view returns (address);
    function accountingEngine() public view returns (address);
    function modifyParameters(bytes32, address) external;
    function modifyParameters(bytes32, bytes32, uint256) external;
    function modifyParameters(bytes32, bytes32, address) external;
    function liquidateCDP(bytes32, address) external returns (uint256);
    function disableContract() external;
}
