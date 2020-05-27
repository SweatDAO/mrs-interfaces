pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/CoinSavingsAccount.sol
contract CoinSavingsAccountAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function savings(address) public view returns (uint256);
    function totalSavings() public view returns (uint256);
    function savingsRate() public view returns (uint256);
    function accumulatedRates() public view returns (uint256);
    function cdpEngine() public view returns (address);
    function accountingEngine() public view returns (address);
    function latestUpdateTime() public view returns (uint256);
    function contractEnabled() public view returns (uint256);
    function modifyParameters(bytes32, uint256) external;
    function modifyParameters(bytes32, address) external;
    function disableContract() external;
    function updateAccumulatedRate() external returns (uint256);
    function nextAccumulatedRate() public view returns (uint256);
    function deposit(uint256) external;
    function withdraw(uint256) external;
}
