pragma solidity ^0.6.7;
pragma experimental ABIEncoderV2;

// https://github.com/reflexer-labs/geb-uniswap-median/blob/master/src/UniswapPriceFeedMedianizer.sol
abstract contract UniswapPriceFeedMedianizerAbstract {
    struct UniswapObservation {
        uint timestamp;
        uint price0Cumulative;
        uint price1Cumulative;
    }
    struct ConverterFeedObservation {
        uint timestamp;
        uint price;
    }

    function authorizedAccounts(address) virtual public view returns (uint256);
    function addAuthorization(address) virtual external;
    function removeAuthorization(address) virtual external;
    function defaultAmountIn() virtual public view returns (uint256);
    function uniswapFactory() virtual public view returns (address);
    function targetToken() virtual public view returns (address);
    function denominationToken() virtual public view returns (address);
    function uniswapPair() virtual public view returns (address);
    function uniswapObservations(uint) virtual public view returns (UniswapObservation memory);
    function converterPriceCumulative() virtual public view returns (uint256);
    function converterPriceTag() virtual public view returns (uint256);
    function converterFeed() virtual public view returns (address);
    function converterFeedObservations(uint) virtual public view returns (ConverterFeedObservation memory);
    function symbol() virtual public view returns (bytes32);
    function granularity() virtual public view returns (uint8);
    function lastUpdateTime() virtual public view returns (uint32);
    function windowSize() virtual public view returns (uint256);
    function periodSize() virtual public view returns (uint256);
    function converterFeedScalingFactor() virtual public view returns (uint256);
    function modifyParameters(bytes32, address) virtual external;
    function observationIndexOf(uint) virtual public view returns (uint8);
    function getObservationListLength() virtual public view returns (uint256, uint256);
    function uniswapComputeAmountOut(uint256,uint256,uint256,uint256) virtual public pure returns (uint256);
    function converterComputeAmountOut(uint256) virtual public view returns (uint256);
    function updateResult(address feeReceiver) virtual external;
    function read() virtual external view returns (uint256);
    function getResultWithValidity() virtual external view returns (uint256, bool);
}
