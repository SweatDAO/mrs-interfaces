pragma solidity ^0.6.7;

abstract contract ChainlinkPriceFeedMedianizerAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function lastUpdateTime() virtual public view returns (uint256);
    function multiplier() virtual public view returns (uint256);
    function symbol() virtual public view returns (uint256);
    function modifyParameters(bytes32, uint256) virtual external;
    function getResultWithValidity() virtual public view returns (bytes32, bool);
    function read() virtual public view returns (bytes32);
    function updateResult() virtual external;
}
