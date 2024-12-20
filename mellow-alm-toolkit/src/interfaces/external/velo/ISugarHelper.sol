// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.25;

import {INonfungiblePositionManager} from "./INonfungiblePositionManager.sol";

interface ISugarHelper {
    ///
    /// Wrappers for LiquidityAmounts
    ///

    function getAmountsForLiquidity(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) external pure returns (uint256 amount0, uint256 amount1);

    function getAmount0ForLiquidity(uint160 sqrtRatioAX96, uint160 sqrtRatioBX96, uint128 liquidity)
        external
        pure
        returns (uint256 amount0);

    function getAmount1ForLiquidity(uint160 sqrtRatioAX96, uint160 sqrtRatioBX96, uint128 liquidity)
        external
        pure
        returns (uint256 amount1);

    ///
    /// Wrappers for PositionValue
    ///

    function principal(
        INonfungiblePositionManager positionManager,
        uint256 tokenId,
        uint160 sqrtRatioX96
    ) external view returns (uint256 amount0, uint256 amount1);

    function fees(INonfungiblePositionManager positionManager, uint256 tokenId)
        external
        view
        returns (uint256 amount0, uint256 amount1);

    ///
    /// Wrappers for TickMath
    ///

    function getSqrtRatioAtTick(int24 tick) external pure returns (uint160 sqrtRatioX96);

    function getTickAtSqrtRatio(uint160 sqrtRatioX96) external pure returns (int24 tick);
}
