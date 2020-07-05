pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/StabilityFeeTreasury.sol
abstract contract StabilityFeeTreasuryAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function allowance(address) virtual public view returns (uint256);
    function cdpEngine() virtual public view returns (address);
    function systemCoin() virtual public view returns (address);
    function coinJoin() virtual public view returns (address);
    function accountingEngine() virtual public view returns (address);
    function treasuryCapacity() virtual public view returns (uint256);
    function minimumFundsRequired() virtual public view returns (uint256);
    function expensesMultiplier() virtual public view returns (uint256);
    function surplusTransferDelay() virtual public view returns (uint256);
    function expensesAccumulator() virtual public view returns (uint256);
    function accumulatorTag() virtual public view returns (uint256);
    function latestSurplusTransferTime() virtual public view returns (uint256);
    function contractEnabled() virtual public view returns (uint256);
    function modifyParameters(bytes32, address) virtual external;
    function modifyParameters(bytes32, uint256) virtual external;
    function disableContract() virtual external;
    function giveFunds(address, uint256) virtual external;
    function takeFunds(address, uint256) virtual external;
    function pullFunds(address, address, uint256) virtual external;
    function transferSurplusFunds() virtual external;
}
