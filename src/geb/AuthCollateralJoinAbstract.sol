pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb-deploy/blob/master/src/AdvancedTokenAdapters.sol
abstract contract AuthCollateralJoinAbstract {
    function cdpEngine() virtual public view returns (address);
    function collateralType() virtual public view returns (bytes32);
    function collateral() virtual public view returns (address);
    function decimals() virtual public view returns (uint256);
    function contractEnabled() virtual public view returns (uint256);
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual public;
    function removeAuthorization(address) virtual public;
    function disableContract() virtual external;
    function join(address, uint256) virtual public;
    function exit(address, uint256) virtual public;
}
