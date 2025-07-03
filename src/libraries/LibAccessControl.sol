// contracts/libraries/LibAccessControl.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title LibAccessControl
/// @notice Library providing internal access control storage structure and utilities for role management in Diamond pattern architectures.
library LibAccessControl {
    /// @dev Storage slot for access control data, using a unique hash to avoid conflicts.
    bytes32 constant ACCESS_CONTROL_STORAGE_SLOT = keccak256("diamond.standard.access.control");

    /// @notice Structure representing role membership and its admin role.
    struct RoleData {
        /// @notice Mapping of address to boolean indicating whether the address holds the role.
        mapping(address account => bool) hasRole;
        /// @notice The admin role that controls this role.
        bytes32 adminRole;
    }

    /// @notice Structure representing the entire access control state layout.
    struct AccessControlStorage {
        /// @notice Mapping of role identifiers to their associated data.
        mapping(bytes32 => RoleData) _roles;
    }

    /// @notice Returns the access control storage pointer.
    /// @dev Uses inline assembly to assign the storage slot pointer.
    /// @return acs The storage reference to access control state.
    function accessControlStorage() internal pure returns (AccessControlStorage storage acs) {
        bytes32 slot = ACCESS_CONTROL_STORAGE_SLOT;
        assembly {
            acs.slot := slot
        }
    }

    /// @notice Returns the default admin role identifier (0x00).
    /// @return The default admin role identifier.
    function DEFAULT_ADMIN_ROLE() internal pure returns (bytes32) {
        return 0x00;
    }
}
