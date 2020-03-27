pragma solidity ^0.5.15;

// https://github.com/sweatdao/mrs/blob/master/src/cat.sol
contract CatAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function hire(address) external;
    function fire(address) external;
    function ilks(bytes32) public view returns (address, uint256, uint256);
    function tasks(bytes32,address) public view returns (address);
    function pick(bytes32, address, address) external;
    function live() public view returns (uint256);
    function vat() public view returns (address);
    function vow() public view returns (address);
    function file(bytes32, address) external;
    function file(bytes32, bytes32, uint256) external;
    function file(bytes32, bytes32, address) external;
    function bite(bytes32, address) external returns (uint256);
    function cage() external;
}
