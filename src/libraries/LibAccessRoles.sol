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
}
