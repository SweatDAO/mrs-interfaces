pragma solidity ^0.6.7;

import { DSTokenAbstract } from "../dapp/DSTokenAbstract.sol";

// Protocol Token adheres to the DS-Token contract interface
// Consider using DSTokenAbstract directly when abstracting the protocol token
abstract contract ProtocolTokenAbstract is DSTokenAbstract {}
