pragma solidity ^0.5.15;

// https://github.com/reflexer-labs/geb-collateral-auction-governance-interface/blob/master/src/CollateralAuctionGovernanceInterface.sol
contract CollateralAuctionGovernanceInterfaceAbstract {
    function owner() public returns (address);
    function setOwner(address) external;
    function authority() public returns (address);
    function setAuthority(address) external;
    function liquidationEngine() public returns (address);
    function addAuthorization(address) external;
    function removeAuthorization(address) external;
}
