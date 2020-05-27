pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/StabilityFeeTreasury.sol
contract StabilityFeeTreasuryAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
}
