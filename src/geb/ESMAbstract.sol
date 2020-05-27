pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/esm/blob/master/src/ESM.sol
contract ESMAbstract {
    function protocolToken() public view returns (address);
    function globalSettlement() public view returns (address);
    function tokenBurner() public view returns (address);
    function triggerThreshold() public view returns (uint256);
    function settled() public view returns (uint256);
    function burntTokens(address) public view returns (address);
    function totalAmountBurnt() public view returns (uint256);
    function shutdown() external;
    function burnTokens(uint256) external;
}
