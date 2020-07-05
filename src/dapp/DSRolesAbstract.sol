pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-roles
abstract contract DSRolesAbstract {
    function _root_users(address) virtual public view returns (bool);
    function _user_roles(address) virtual public view returns (bytes32);
    function _capability_roles(address, bytes4) virtual public view returns (bytes32);
    function _public_capabilities(address, bytes4) virtual public view returns (bool);
    function getUserRoles(address) virtual public view returns (bytes32);
    function getCapabilityRoles(address, bytes4) virtual public view returns (bytes32);
    function isUserRoot(address) virtual public view returns (bool);
    function isCapabilityPublic(address, bytes4) virtual public view returns (bool);
    function hasUserRole(address, uint8) virtual public view returns (bool);
    function canCall(address, address, bytes4) virtual public view returns (bool);
    function setRootUser(address, bool) virtual public;
    function setUserRole(address, uint8, bool) virtual public;
    function setPublicCapability(address, bytes4, bool) virtual public;
    function setRoleCapability(uint8, address, bytes4, bool) virtual public;
    function authority() virtual public view returns (address);
    function owner() virtual public view returns (address);
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
}
