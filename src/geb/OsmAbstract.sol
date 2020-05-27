pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb-fsm
contract OsmAbstract {
    function authorizedAccounts(address) public view returns (uint256);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
    function stopped() public view returns (uint256);
    function priceSource() public view returns (address);
    function updateDelay() public view returns (uint16);
    function lastUpdateTime() public view returns (uint64);
    function currentFeed() public view returns (uint128, uint128);
    function nextFeed() public view returns (uint128, uint128);
    function bud(address) public view returns (uint256);
    function stop() external;
    function start() external;
    function changePriceSource(address) external;
    function changeDelay(uint16) external;
    function restartValue() external;
    function passedDelay() public view returns (bool);
    function updateResult() external;
    function getResultWithValidity() external view returns (bytes32, bool);
    function getNextResultWithValidity() external view returns (bytes32, bool);
    function read() external view returns (bytes32);
    function addOracles(address[] calldata) external;
    function removeOracles(address[] calldata) external;
}
