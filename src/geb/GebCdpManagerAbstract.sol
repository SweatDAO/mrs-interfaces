pragma solidity ^0.6.7;
pragma experimental ABIEncoderV2;

// https://github.com/reflexer-labs/geb-cdp-manager/blob/master/src/GebCdpManager.sol
abstract contract GebCdpManagerAbstract {
    struct List {
        uint prev;
        uint next;
    }

    function cdpEngine() virtual public view returns (address);
    function cdpi() virtual public view returns (uint256);
    function cdps(uint256) virtual public view returns (address);
    function cdpList(uint256) virtual public view returns (List memory);
    function ownsCDP(uint256) virtual public view returns (address);
    function collateralTypes(uint256) virtual public view returns (bytes32);
    function firstCDPID(address) virtual public view returns (uint256);
    function lastCDPID(address) virtual public view returns (uint256);
    function cdpCount(address) virtual public view returns (uint256);
    function cdpCan(address, uint256, address) virtual public view returns (uint256);
    function handlerCan(address, address) virtual public view returns (uint256);
    function allowCDP(
        uint256,
        address,
        uint256
    ) virtual external;
    function allowHandler(
        address,
        uint256
    ) virtual external;
    function openCDP(
        bytes32,
        address
    ) virtual public returns (uint);
    function transferCDPOwnership(
        uint256,
        address
    ) virtual external;
    function modifyCDPCollateralization(
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
    function moveCDP(
        uint256,
        uint256
    ) virtual external;
    function protectCDP(
        uint256,
        address,
        address
    ) virtual external;
}
