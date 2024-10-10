// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IAetherPoolImmutables.sol';
import './pool/IAetherPoolState.sol';
import './pool/IAetherPoolDerivedState.sol';
import './pool/IAetherPoolActions.sol';
import './pool/IAetherPoolOwnerActions.sol';
import './pool/IAetherPoolEvents.sol';

/// @title The interface for a Aether Pool
/// @notice A Aether pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IAetherPool is
    IAetherPoolImmutables,
    IAetherPoolState,
    IAetherPoolDerivedState,
    IAetherPoolActions,
    IAetherPoolOwnerActions,
    IAetherPoolEvents
{

}
