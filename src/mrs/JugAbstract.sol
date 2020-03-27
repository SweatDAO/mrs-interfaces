pragma solidity ^0.5.15;

// https://github.com/sweatdao/mrs/blob/master/src/jug.sol
contract JugAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function ilks(bytes32) public view returns (uint256, uint256);
    function vat() public view returns (address);
    function vow() public view returns (address);
    function base() public view returns (address);
    function init(bytes32) external;
    function file(bytes32, bytes32, uint256) external;
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function drip(bytes32) external returns (uint256);
}
