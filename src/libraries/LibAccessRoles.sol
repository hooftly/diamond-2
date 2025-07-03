// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title LibAccessRoles
/// @notice Centralized role identifiers for EqualFi diamond facets
/// @dev These constants define role identifiers used throughout EqualFi's AccessControl-based permission system.
library LibAccessRoles {
    /// @notice The default admin role used for managing other roles.
    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /// @notice Administrative role for managing global protocol configuration.
    bytes32 public constant _ADMIN = keccak256("_ADMIN");

    /// @notice Role allowed to mint EqualFi NFTs.
    bytes32 public constant _NFT_MINTER = keccak256("_NFT_MINTER");

    /// @notice Role allowed to operate lending and borrowing logic.
    bytes32 public constant _LENDING_OPERATOR = keccak256("_LENDING_OPERATOR");

    /// @notice Role authorized to perform liquidations.
    bytes32 public constant _LIQUIDATOR = keccak256("_LIQUIDATOR");

    /// @notice Role responsible for managing staking parameters and rewards.
    bytes32 public constant _STAKING_MANAGER = keccak256("_STAKING");

    /// @notice Role for backend relayers or frontend automation features.
    bytes32 public constant _RELAYER = keccak256("_RELAYER");
}
