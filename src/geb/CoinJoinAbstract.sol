pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb/blob/master/src/BasicTokenAdapters.sol
contract CoinJoinAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address usr) external;
    function removeAuthorization(address usr) external;
    function cdpEngine() public view returns (address);
    function systemCoin() public view returns (address);
    function contractEnabled() public view returns (uint256);
    function disableContract() external;
    function join(address, uint256) external;
    function exit(address, uint256) external;
}
