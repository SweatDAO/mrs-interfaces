pragma solidity ^0.5.15;

// https://github.com/sweatdao/mrs/blob/master/src/vow.sol
contract VoxAbstract {
    function wards(address) public view returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    function path() external view returns (int256);
    function fix() external view returns (uint256);
    function span() external view returns (uint256);
    function tau() external view returns (uint256);
    function trim() external view returns (uint256);
    function rest() external view returns (uint256);
    function how() external view returns (uint256);
    function go() external view returns (uint256);
    function bowl() external view returns (uint256);
    function live() external view returns (uint256);
    function dawn() external view returns (uint256);
    function dusk() external view returns (uint256);
    function up() external view returns (uint256);
    function down() external view returns (uint256);
    function rho() external view returns (uint256);
    function way() external view returns (uint256);
    function pip() external view returns (uint256);
    function spot() external view returns (uint256);
    function jug() external view returns (uint256);
    function file(bytes32, address) external;
    function file(bytes32, uint256) external;
    function cage() external;
    function adj(uint, uint, int) public view returns (uint256, uint256);
    function drip() public returns (uint tmp);
    function back() external;
}
