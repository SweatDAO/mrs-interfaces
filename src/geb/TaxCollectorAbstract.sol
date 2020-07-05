pragma solidity ^0.6.7;
pragma experimental ABIEncoderV2;

// https://github.com/reflexer-labs/geb/blob/master/src/TaxCollector.sol
abstract contract TaxCollectorAbstract {
    struct TaxReceiver {
        // Whether this receiver can accept a negative rate (taking SF from it)
        uint256 canTakeBackTax;
        // Percentage of SF allocated to this receiver
        uint256 taxPercentage;
    }

    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function collateralTypes(bytes32) virtual public view returns (uint256, uint256);
    function secondaryReceiverAllotedTax(bytes32) virtual public view returns (uint256);
    function usedSecondaryReceiver(address) virtual public view returns (uint256);
    function secondaryReceiverAccounts(uint256) virtual public view returns (address);
    function secondaryReceiverRevenueSources(address) virtual public view returns (uint256);
    function secondaryTaxReceivers(bytes32, uint256) virtual public view returns (TaxReceiver memory);
    function cdpEngine() virtual public view returns (address);
    function primaryTaxReceiver() virtual public view returns (address);
    function secondaryReceiverNonce() virtual public view returns (uint256);
    function maxSecondaryReceivers() virtual public view returns (uint256);
    function latestSecondaryReceiver() virtual public view returns (uint256);
    function globalStabilityFee() virtual public view returns (address);
    function initializeCollateralType(bytes32) virtual external;
    function modifyParameters(bytes32, bytes32, uint256) virtual external;
    function modifyParameters(bytes32, uint256, uint256) virtual external;
    function modifyParameters(bytes32, uint256, uint256, address) virtual external;
    function modifyParameters(bytes32, uint256) virtual external;
    function modifyParameters(bytes32, address) virtual external;
    function collectedAllTax() virtual public view returns (bool);
    function secondaryReceiversAmount() virtual public view returns (uint256);
    function collateralListLength() virtual public view returns (uint256);
    function isSecondaryReceiver(uint256) virtual public view returns (bool);
    function taxManyOutcome(uint256, uint256) virtual public view returns (bool, int256);
    function taxSingleOutcome(bytes32) virtual public view returns (uint256, int256);
    function taxMany(uint256, uint256) virtual external;
    function taxSingle(bytes32) virtual external returns (uint256);
}
