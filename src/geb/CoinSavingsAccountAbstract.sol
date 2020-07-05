pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/CoinSavingsAccount.sol
abstract contract CoinSavingsAccountAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function savings(address) virtual public view returns (uint256);
    function totalSavings() virtual public view returns (uint256);
    function savingsRate() virtual public view returns (uint256);
    function accumulatedRates() virtual public view returns (uint256);
    function cdpEngine() virtual public view returns (address);
    function accountingEngine() virtual public view returns (address);
    function latestUpdateTime() virtual public view returns (uint256);
    function contractEnabled() virtual public view returns (uint256);
    function modifyParameters(bytes32, uint256) virtual external;
    function modifyParameters(bytes32, address) virtual external;
    function disableContract() virtual external;
    function updateAccumulatedRate() virtual external returns (uint256);
    function nextAccumulatedRate() virtual public view returns (uint256);
    function deposit(uint256) virtual external;
    function withdraw(uint256) virtual external;
}
