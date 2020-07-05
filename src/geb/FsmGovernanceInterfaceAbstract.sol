pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb-fsm-governance-interface
abstract contract FsmGovernanceInterfaceAbstract {
    function owner() virtual public view returns (address);
    function authority() virtual public view returns (address);
    function fsms(bytes32) virtual public view returns (address);
    function setFsm(bytes32, address) virtual public;
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
    function stop(bytes32) virtual public;
}
