pragma solidity ^0.5.15;

import { DSTokenAbstract } from "../dapp/DSTokenAbstract.sol";

// META Token adheres to the DS-Token contract interface
//  Consider using DSTokenAbstract directly when abstracting META
contract METAAbstract is DSTokenAbstract {}
