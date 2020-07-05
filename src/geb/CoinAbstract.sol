pragma solidity ^0.6.7;

// https://github.com/reflexer-labs/geb/blob/master/src/Coin.sol
abstract contract CoinAbstract {
    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function name() virtual public view returns (string memory);
    function symbol() virtual public view returns (string memory);
    function version() virtual public view returns (string memory);
    function decimals() virtual public view returns (uint8);
    function totalSupply() virtual public view returns (uint256);
    function balanceOf(address) virtual public view returns (uint256);
    function allowance(address, address) virtual public view returns (uint256);
    function nonces(address) virtual public view returns (uint256);
    function DOMAIN_SEPARATOR() virtual public view returns (bytes32);
    function PERMIT_TYPEHASH() virtual public view returns (bytes32);
    function transfer(address, uint256) virtual external;
    function transferFrom(address, address, uint256) virtual public returns (bool);
    function mint(address, uint256) virtual external;
    function burn(address, uint256) virtual external;
    function approve(address, uint256) virtual external returns (bool);
    function push(address, uint256) virtual external;
    function pull(address, uint256) virtual external;
    function move(address, address, uint256) virtual external;
    function permit(address, address, uint256, uint256, bool, uint8, bytes32, bytes32) virtual external;
}
