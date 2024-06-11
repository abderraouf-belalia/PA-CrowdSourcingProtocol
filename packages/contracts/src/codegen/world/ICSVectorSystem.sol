// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

/**
 * @title ICSVectorSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface ICSVectorSystem {
  function csp__initiateVector(uint256 capacity, uint256 lifetime, string memory insight) external returns (bytes32);

  function csp__archiveVector(bytes32 vectorId) external;

  function csp__transferVector(bytes32 vectorId, address newHandler) external;
}