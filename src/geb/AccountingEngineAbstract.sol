pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/AccountingEngine.sol
abstract contract AccountingEngineAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address usr) virtual external;
    function removeAuthorization(address usr) virtual external;
    function safeEngine() virtual public view returns (address);
    function surplusAuctionHouse() virtual public view returns (address);
    function debtAuctionHouse() virtual public view returns (address);
    function protocolTokenAuthority() virtual public view returns (address);
    function postSettlementSurplusDrain() virtual public view returns (address);
    function systemStakingPool() virtual public view returns (address);
    function extraSurplusReceiver() virtual public view returns (address);
    function debtQueue(uint256) virtual public view returns (uint256);
    function debtPoppers(uint256) virtual public view returns (address);
    function totalQueuedDebt() virtual public view returns (uint256);
    function totalOnAuctionDebt() virtual public view returns (uint256);
    function lastSurplusAuctionTime() virtual public view returns (uint256);
    function surplusAuctionDelay() virtual public view returns (uint256);
    function surplusTransferDelay() virtual public view returns (uint256);
    function extraSurplusIsTransferred() virtual public view returns (uint256);
    function surplusTransferAmount() virtual public view returns (uint256);
    function canPrintProtocolTokens() virtual public view returns (bool);
    function transferExtraSurplus() virtual external;
    function popDebtDelay() virtual public view returns (uint256);
    function initialDebtAuctionMintedTokens() virtual public view returns (uint256);
    function debtAuctionBidSize() virtual public view returns (uint256);
    function disableCooldown() virtual public view returns (uint256);
    function disableTimestamp() virtual public view returns (uint256);
    function surplusAuctionAmountToSell() virtual public view returns (uint256);
    function surplusBuffer() virtual public view returns (uint256);
    function contractEnabled() virtual public view returns (uint256);
    function modifyParameters(bytes32, uint256) virtual external;
    function modifyParameters(bytes32, address) virtual external;
    function pushDebtToQueue(uint256) virtual external;
    function popDebtFromQueue(uint256) virtual external;
    function settleDebt(uint256) virtual external;
    function cancelAuctionedDebtWithSurplus(uint256) virtual external;
    function auctionDebt() virtual external returns (uint256);
    function auctionSurplus() virtual external returns (uint256);
    function disableContract() virtual external;
    function transferPostSettlementSurplus() virtual external;
}
