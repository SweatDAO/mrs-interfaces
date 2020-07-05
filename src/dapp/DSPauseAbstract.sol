pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-pause
abstract contract DSPauseAbstract {
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
    function setDelay(uint256) virtual public;
    function scheduledTransactions(bytes32) virtual public view returns (bool);
    function proxy() virtual public view returns (address);
    function delay() virtual public view returns (uint256);
    function scheduleTransaction(address, bytes32, bytes memory, uint256) virtual public;
    function abandonTransaction(address, bytes32, bytes memory, uint256) virtual public;
    function executeTransaction(address, bytes32, bytes memory, uint256) virtual public returns (bytes memory);
}
