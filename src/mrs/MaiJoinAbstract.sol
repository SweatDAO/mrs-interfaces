pragma solidity ^0.5.15;

// https://github.com/sweatdao/mrs/blob/master/src/join.sol
contract MaiJoinAbstract {
    function wards(address) public view returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    function vat() public view returns (address);
    function mai() public view returns (address);
    function live() public view returns (uint256);
    function cage() external;
    function join(address, uint256) external;
    function exit(address, uint256) external;
}
