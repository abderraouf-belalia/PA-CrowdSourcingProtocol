// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

/**
 * @title ICSPotentialSystem
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface ICSPotentialSystem {
  function csp__storeEnergy(bytes32 vectorId, uint256 strength) external payable returns (bytes32);

  function csp__releaseEnergy(bytes32 vectorId) external payable;
}
