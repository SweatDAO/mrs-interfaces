pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/BasicTokenAdapters.sol
abstract contract CollateralJoinAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function cdpEngine() virtual public view returns (address);
    function collateralType() virtual public view returns (bytes32);
    function collateral() virtual public view returns (address);
    function decimals() virtual public view returns (uint256);
    function contractEnabled() virtual public view returns (uint256);
    function disableContract() virtual external;
    function join(address, uint256) virtual external;
    function exit(address, uint256) virtual external;
}
