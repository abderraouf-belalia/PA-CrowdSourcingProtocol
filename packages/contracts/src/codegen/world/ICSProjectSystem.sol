// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

/**
 * @title ICSProjectSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface ICSProjectSystem {
  function app__create(
    uint32 threshold,
    uint32 target,
    uint32 deadline,
    string memory title,
    string memory description,
    bool optout
  ) external;

  function app__archive(bytes32 projectId) external;

  function app__claim(bytes32 projectId) external;

  function app__contribute(bytes32 projectId) external payable;

  function app__request(
    bytes32 projectId,
    address recepient,
    uint256 amount,
    string memory title,
    string memory description
  ) external;
}