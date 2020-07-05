pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb-fsm
abstract contract OsmAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function stopped() virtual public view returns (uint256);
    function priceSource() virtual public view returns (address);
    function updateDelay() virtual public view returns (uint16);
    function lastUpdateTime() virtual public view returns (uint64);
    function currentFeed() virtual public view returns (uint128, uint128);
    function nextFeed() virtual public view returns (uint128, uint128);
    function stop() virtual external;
    function start() virtual external;
    function changePriceSource(address) virtual external;
    function changeDelay(uint16) virtual external;
    function restartValue() virtual external;
    function passedDelay() virtual public view returns (bool);
    function updateResult() virtual external;
    function getResultWithValidity() virtual external view returns (bytes32, bool);
    function getNextResultWithValidity() virtual external view returns (bytes32, bool);
    function read() virtual external view returns (bytes32);
    function addOracles(address[] calldata) virtual external;
    function removeOracles(address[] calldata) virtual external;
}
