pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-pause/protest-pause.sol
abstract contract DSProtestPauseAbstract {
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
    function setDelay(uint256) virtual public;
    function setProtester(address) virtual public;
    function setDelayMultiplier(uint256) virtual public;
    function scheduledTransactions(bytes32) virtual public view returns (bool);
    function proxy() virtual public view returns (address);
    function delay() virtual public view returns (uint256);
    function currentlyScheduledTransactions() virtual public view returns (uint256);
    function EXEC_TIME() virtual public view returns (uint256);
    function maxScheduledTransactions() virtual public view returns (uint256);
    function MAX_DELAY() virtual public view returns (uint256);
    function DS_PAUSE_TYPE() virtual public view returns (uint256);
    function deploymentTime() virtual public view returns (uint256);
    function protesterLifetime() virtual public view returns (uint256);
    function protestWindowAvailable(address, bytes32, bytes calldata) virtual external view returns (bool);
    function protestWindowAvailable(bytes32 ) virtual external view returns (bool);
    function timeUntilProposalProtestDeadline(address, bytes32, bytes calldata) virtual external view returns (uint256);
    function timeUntilProposalProtestDeadline(bytes32) virtual external view returns (uint256);
    function getTransactionDelays(address, bytes32, bytes memory) virtual public view returns (bool, uint256, uint256);
    function getTransactionDelays(bytes32 txHash) virtual public view returns (bool, uint256, uint256);
    function protestAgainstTransaction(address, bytes32, bytes calldata) virtual external;
    function scheduleTransaction(address, bytes32, bytes memory, uint256, string memory) virtual public;
    function scheduleTransaction(address, bytes32, bytes memory, uint256) virtual public;
    function attachTransactionDescription(address, bytes32, bytes memory, uint256, string memory) virtual public;
    function abandonTransaction(address, bytes32, bytes memory, uint256) virtual public;
    function executeTransaction(address, bytes32, bytes memory, uint256) virtual public returns (bytes memory);
}
