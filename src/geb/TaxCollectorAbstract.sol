pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/TaxCollector.sol
contract TaxCollectorAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function collateralTypes(bytes32) public view returns (uint256, uint256);
    function cdpEngine() public view returns (address);
    function accountingEngine() public view returns (address);
    function globalStabilityFee() public view returns (address);
    function initializeCollateralType(bytes32) external;
    function modifyParameters(bytes32, bytes32, uint256) external;
    function modifyParameters(bytes32, uint256, uint256) external;
    function modifyParameters(bytes32, uint256, uint256, address) external;
    function modifyParameters(bytes32, uint256) external;
    function modifyParameters(bytes32, address) external;
    function collectedAllTax() public view returns (bool);
    function nextTaxationOutcome() public view returns (bool, int256);
    function averageTaxationRate(uint256) public view returns (uint256);
    function bucketListLength() public view returns (uint256);
    function isBucket() public view returns (uint256);
    function taxationOutcome(bytes32) public view returns (uint256, int256);
    function taxAll() external;
    function taxSingle(bytes32) external returns (uint256);
}
