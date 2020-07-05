pragma solidity ^0.6.7;

abstract contract GovernanceLedPriceFeedMedianizerAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function lastUpdateTime() virtual public view returns (uint256);
    function quorum() virtual public view returns (uint256);
    function symbol() virtual public view returns (uint256);
    function whitelistedOracles(address) virtual public view returns (uint256);
    function oracleAddresses(uint8) virtual public view returns (address);
    function getResultWithValidity() virtual public view returns (bytes32, bool);
    function read() virtual public view returns (bytes32);
    function addOracles(address[] calldata) virtual external;
    function removeOracles(address[] calldata) virtual external;
    function setQuorum(uint256) virtual external;
    function updateResult(
      uint256[] calldata prices_, uint256[] calldata updateTimestamps_,
      uint8[] calldata v, bytes32[] calldata r, bytes32[] calldata s
    ) virtual external;

}
