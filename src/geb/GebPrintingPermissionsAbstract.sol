pragma solidity ^0.6.7;
pragma experimental ABIEncoderV2;

// https://github.com/reflexer-labs/geb-printing-permissions/blob/master/src/GebPrintingPermissionsAbstract.sol
abstract contract GebPrintingPermissionsAbstract {
    struct SystemRights {
        bool    covered;
        uint256 revokeRightsDeadline;
        uint256 uncoverCooldownEnd;
        uint256 withdrawAddedRightsDeadline;
        address previousDebtAuctionHouse;
        address currentDebtAuctionHouse;
    }

    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address usr) virtual external;
    function removeAuthorization(address usr) virtual external;
    function allowedSystems(address) virtual public view returns (SystemRights memory);
    function usedAuctionHouses(address) virtual public view returns (uint256);
    function unrevokableRightsCooldown() virtual public view returns (uint256);
    function denyRightsCooldown() virtual public view returns (uint256);
    function addRightsCooldown() virtual public view returns (uint256);
    function coveredSystems() virtual public view returns (uint256);
    function AUCTION_HOUSE_TYPE() virtual public view returns (bytes32);
    function modifyParameters(bytes32, uint256) virtual external;
    function giveUpAuthorityRoot() virtual external;
    function giveUpAuthorityOwnership() virtual external;
    function coverSystem(address) virtual external;
    function startUncoverSystem(address) virtual external;
    function abandonUncoverSystem(address) virtual external;
    function endUncoverSystem(address) virtual external;
    function updateCurrentDebtAuctionHouse(address) virtual external;
    function removePreviousDebtAuctionHouse(address) virtual external;
    function proposeIndefinitePrintingPermissions(address, uint256) virtual external;
}
