// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

/**
 * @title ICSMotionSystem
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface ICSMotionSystem {
  function csp__initiateMotion(
    bytes32 vectorId,
    uint256 momentum,
    uint256 lifetime,
    address target,
    string memory insight
  ) external returns (bytes32);

  function csp__executeMotion(bytes32 motionId) external payable;

  function csp__cancelMotion(bytes32 motionId) external;
}
