pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/CDPEngine.sol
abstract contract CDPEngineAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function cdpRights(address, address) virtual public view returns (uint256);
    function approveCDPModification(address) virtual external;
    function denyCDPModification(address) virtual external;
    function collateralTypes(bytes32) virtual external view returns (uint256, uint256, uint256, uint256, uint256, uint256);
    function cdps(bytes32, address) virtual public view returns (uint256, uint256);
    function tokenCollateral(bytes32, address) virtual public view returns (uint256);
    function coinBalance(address) virtual public view returns (uint256);
    function debtBalance(address) virtual public view returns (uint256);
    function globalDebt() virtual public view returns (uint256);
    function globalUnbackedDebt() virtual public view returns (uint256);
    function globalDebtCeiling() virtual public view returns (uint256);
    function contractEnabled() virtual public view returns (uint256);
    function initializeCollateralType(bytes32) virtual external;
    function modifyParameters(bytes32, uint256) virtual external;
    function modifyParameters(bytes32, bytes32, uint256) virtual external;
    function disableContract() virtual external;
    function modifyCollateralBalance(bytes32, address, int256) virtual external;
    function transferCollateral(bytes32, address, address, uint256) virtual external;
    function transferInternalCoins(address, address, uint256) virtual external;
    function modifyCDPCollateralization(bytes32, address, address, address, int256, int256) virtual external;
    function transferCDPCollateralAndDebt(bytes32, address, address, int256, int256) virtual external;
    function confiscateCDPCollateralAndDebt(bytes32, address, address, address, int256, int256) virtual external;
    function settleDebt(uint256) virtual external;
    function createUnbackedDebt(address, address, uint256) virtual external;
    function updateAccumulatedRate(bytes32, address, int256) virtual external;
}
