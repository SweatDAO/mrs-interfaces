pragma solidity ^0.5.15;

import { DSValueAbstract } from "../dapp/DSValueAbstract.sol";

// 'Orcl' is a DS-Value used within the GEB
// Consider using the DSValueAbstract directly when abstracting Orcl
contract OrclAbstract is DSValueAbstract {}
