pragma solidity ^0.5.15;

import { DSTokenAbstract } from "../dapp/DSTokenAbstract.sol";

// Protocol Token adheres to the DS-Token contract interface
// Consider using DSTokenAbstract directly when abstracting the protocol token
contract ProtocolTokenAbstract is DSTokenAbstract {}
