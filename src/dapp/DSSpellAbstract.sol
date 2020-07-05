pragma solidity ^0.6.7;

// https://github.com/dapphub/ds-spell
abstract contract DSSpellAbstract {
    function whom() virtual public view returns (address);
    function mana() virtual public view returns (uint256);
    function data() virtual public view returns (bytes memory);
    function done() virtual public view returns (bool);
    function cast() virtual public;
}
