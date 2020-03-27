pragma solidity ^0.5.15;

// https://github.com/sweatdao/osm-mom
contract OsmMomAbstract {
    function owner() public view returns (address);
    function authority() public view returns (address);
    function osms(bytes32) public view returns (address);
    function setOsm(bytes32, address) public;
    function setOwner(address) public;
    function setAuthority(address) public;
    function stop(bytes32) public;
}
