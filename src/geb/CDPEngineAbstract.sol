pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/CDPEngine.sol
contract CDPEngineAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function cdpRights(address, address) public view returns (uint256);
    function approveCDPModification(address) external;
    function denyCDPModification(address) external;
    function collateralTypes(bytes32) external view returns (uint256, uint256, uint256, uint256, uint256, uint256);
    function cdps(bytes32, address) public view returns (uint256, uint256);
    function tokenCollateral(bytes32, address) public view returns (uint256);
    function coinBalance(address) public view returns (uint256);
    function debtBalance(address) public view returns (uint256);
    function globalDebt() public view returns (uint256);
    function globalUnbackedDebt() public view returns (uint256);
    function globalDebtCeiling() public view returns (uint256);
    function contractEnabled() public view returns (uint256);
    function initializeCollateralType(bytes32) external;
    function modifyParameters(bytes32, uint256) external;
    function modifyParameters(bytes32, bytes32, uint256) external;
    function disableContract() external;
    function modifyCollateralBalance(bytes32, address, int256) external;
    function transferCollateral(bytes32, address, address, uint256) external;
    function transferInternalCoins(address, address, uint256) external;
    function modifyCDPCollateralization(bytes32, address, address, address, int256, int256) external;
    function transferCDPCollateralAndDebt(bytes32, address, address, int256, int256) external;
    function confiscateCDPCollateralAndDebt(bytes32, address, address, address, int256, int256) external;
    function settleDebt(uint256) external;
    function createUnbackedDebt(address, address, uint256) external;
    function updateAccumulatedRate(bytes32, address, int256) external;
}
