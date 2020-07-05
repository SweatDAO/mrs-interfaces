pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-pause
abstract contract DSPauseProxyAbstract {
    function owner() virtual public view returns (address);
    function executeTransaction(address, bytes memory) virtual public returns (bytes memory);
}
