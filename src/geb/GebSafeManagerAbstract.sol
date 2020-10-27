pragma solidity ^0.6.7;
pragma experimental ABIEncoderV2;

// https://github.com/reflexer-labs/geb-safe-manager/blob/master/src/GebSafeManager.sol
abstract contract GebSafeManagerAbstract {
    struct List {
        uint prev;
        uint next;
    }

    function safeEngine() virtual public view returns (address);
    function safei() virtual public view returns (uint256);
    function safes(uint256) virtual public view returns (address);
    function safeList(uint256) virtual public view returns (List memory);
    function ownsSAFE(uint256) virtual public view returns (address);
    function collateralTypes(uint256) virtual public view returns (bytes32);
    function firstSAFEID(address) virtual public view returns (uint256);
    function lastSAFEID(address) virtual public view returns (uint256);
    function safeCount(address) virtual public view returns (uint256);
    function safeCan(address, uint256, address) virtual public view returns (uint256);
    function handlerCan(address, address) virtual public view returns (uint256);
    function allowSAFE(
        uint256,
        address,
        uint256
    ) virtual external;
    function allowHandler(
        address,
        uint256
    ) virtual external;
    function openSAFE(
        bytes32,
        address
    ) virtual public returns (uint);
    function transferSAFEOwnership(
        uint256,
        address
    ) virtual external;
    function modifySAFECollateralization(
        uint256,
        int256,
        int256
    ) virtual external;
    function transferCollateral(
        uint256,
        address,
        uint256
    ) virtual external;
    function transferCollateral(
        bytes32,
        uint256,
        address,
        uint256
    ) virtual external;
    function transferInternalCoins(
        uint256,
        address,
        uint256
    ) virtual external;
    function quitSystem(
        uint256,
        address
    ) virtual external;
    function enterSystem(
        address,
        uint
    ) virtual external;
    function moveSAFE(
        uint256,
        uint256
    ) virtual external;
    function protectSAFE(
        uint256,
        address,
        address
    ) virtual external;
}
