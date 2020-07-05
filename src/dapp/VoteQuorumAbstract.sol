pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/ds-vote-quorum
abstract contract VoteQuorumApprovals {
    function ballots(bytes32) virtual public view returns (address[] memory);
    function votes(address) virtual public view returns (bytes32);
    function approvals(address) virtual public view returns (uint256);
    function deposits(address) virtual public view returns (address);
    function PROT() virtual public view returns (address);
    function IOU() virtual public view returns (address);
    function votedAuthority() virtual public view returns (address);
    function MAX_CANDIDATES_PER_BALLOT() virtual public view returns (uint256);
    function addVotingWeight(uint256) virtual public;
    function removeVotingWeight(uint256) virtual public;
    function groupCandidates(address[] memory) virtual public returns (bytes32);
    function vote(address[] memory) virtual public returns (bytes32);
    function vote(bytes32) virtual public;
    function electCandidate(address) virtual public;
}

abstract contract VoteQuorumAbstract is VoteQuorumApprovals {
    function setOwner(address) virtual public;
    function setAuthority(address) virtual public;
    function isUserRoot(address) virtual public view returns (bool);
    function setRootUser(address, bool) virtual public;
    function _root_users(address) virtual public view returns (bool);
    function _user_roles(address) virtual public view returns (bytes32);
    function _capability_roles(address, bytes4) virtual public view returns (bytes32);
    function _public_capabilities(address, bytes4) virtual public view returns (bool);
    function getUserRoles(address) virtual public view returns (bytes32);
    function getCapabilityRoles(address, bytes4) virtual public view returns (bytes32);
    function isCapabilityPublic(address, bytes4) virtual public view returns (bool);
    function hasUserRole(address, uint8) virtual public view returns (bool);
    function canCall(address, address, bytes4) virtual public view returns (bool);
    function setUserRole(address, uint8, bool) virtual public;
    function setPublicCapability(address, bytes4, bool) virtual public;
    function setRoleCapability(uint8, address, bytes4, bool) virtual public;
}

abstract contract VoteQuorumFactoryAbstract {
    function newVoteQuorum(address, uint256) virtual public returns (address);
}
