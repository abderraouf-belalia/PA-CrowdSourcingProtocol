// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { IBaseWorld } from "@latticexyz/world/src/codegen/interfaces/IBaseWorld.sol";

import { ICSForceSystem } from "./ICSForceSystem.sol";
import { ICSMotionSystem } from "./ICSMotionSystem.sol";
import { ICSPotentialSystem } from "./ICSPotentialSystem.sol";
import { ICSSystem } from "./ICSSystem.sol";
import { ICSVectorSystem } from "./ICSVectorSystem.sol";

/**
 * @title IWorld
 * @notice This interface integrates all systems and associated function selectors
 * that are dynamically registered in the World during deployment.
 * @dev This is an autogenerated file; do not edit manually.
 */
interface IWorld is IBaseWorld, ICSForceSystem, ICSMotionSystem, ICSPotentialSystem, ICSSystem, ICSVectorSystem {

}
