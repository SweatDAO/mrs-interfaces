pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/OracleRelayer.sol
contract OracleRelayerAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function safetyCRatio() public view returns (uint256);
    function liquidationCRatio() public view returns (uint256);
    function orcl(bytes32) public view returns (address);
    function collateralTypes(bytes32) public view returns (address, uint256);
    function cdpEngine() public view returns (address);
    function redemptionRate() public view returns (uint256);
    function redemptionPrice() public returns (uint256);
    function redemptionPriceUpdateTime() public view returns (uint256);
    function contractEnabled() public view returns (uint256);
    function modifyParameters(bytes32, bytes32, address) external;
    function modifyParameters(bytes32, uint256) external;
    function modifyParameters(bytes32, bytes32, uint256) external;
    function updateRedemptionPrice() external;
    function updateCollateralPrice(bytes32) external;
    function disableContract() external;
}
