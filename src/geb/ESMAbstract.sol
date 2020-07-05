pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/esm/blob/master/src/ESM.sol
abstract contract ESMAbstract {
    function protocolToken() virtual public view returns (address);
    function globalSettlement() virtual public view returns (address);
    function tokenBurner() virtual public view returns (address);
    function modifyParamaters(bytes32, uint256) virtual external;
    function triggerThreshold() virtual public view returns (uint256);
    function settled() virtual public view returns (uint256);
    function burntTokens(address) virtual public view returns (address);
    function totalAmountBurnt() virtual public view returns (uint256);
    function shutdown() virtual external;
    function burnTokens(uint256) virtual external;
}
