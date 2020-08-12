pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/esm/blob/master/src/ESM.sol
abstract contract ESMAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function protocolToken() virtual public view returns (address);
    function globalSettlement() virtual public view returns (address);
    function thresholdSetter() virtual public view returns (address);
    function tokenBurner() virtual public view returns (address);
    function modifyParameters(bytes32, uint256) virtual external;
    function modifyParameters(bytes32, address) virtual external;
    function triggerThreshold() virtual public view returns (uint256);
    function settled() virtual public view returns (uint256);
    function shutdown() virtual external;
}
