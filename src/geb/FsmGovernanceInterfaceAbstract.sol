pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb-fsm-governance-interface
contract FsmGovernanceInterfaceAbstract {
    function owner() public view returns (address);
    function authority() public view returns (address);
    function fsms(bytes32) public view returns (address);
    function setFsm(bytes32, address) public;
    function setOwner(address) public;
    function setAuthority(address) public;
    function stop(bytes32) public;
}
