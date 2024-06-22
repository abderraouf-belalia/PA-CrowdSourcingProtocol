// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { System } from "@latticexyz/world/src/System.sol";
import { IERC20Mintable } from "@latticexyz/world-modules/src/modules/erc20-puppet/IERC20Mintable.sol";

import { CSVectorsTable, CSVectorsTableData, CSVectorPotentialsLookupTable, CSVectorPotentialsLookupTable, CSForcesTable, CSForcesTableData, CSMotionsTable, CSMotionsTableData, CSMotionForcesLookupTable, CSMotionForcesLookupTable, CSVectorPotentialsLookupTable, CSPotentialsTable, CSPotentialsTableData, CSSystemTokenTable, CSSystemTokenTableData } from "@storage/index.sol";

import { VectorStatus, MotionStatus } from "@storage/common.sol";

import { BytesUtils, StringUtils } from "@utils/index.sol";

import { CSBase } from "@systems/core/CSBase.sol";

/**
 * @title Crowd Sourcing Protocol System
 * @author Abderraouf "k-symplex" Belalia<abderraoufbelalia@symplectic.link>
 * @notice This defines the base helper functions and modifiers for the high-level systems.
 */
contract CSSystem is CSBase {
  using BytesUtils for bytes32;
  using StringUtils for string;
  /**
   * This makes sure that only the handler of the vector performs an action.
   */
  modifier onlyHandler(bytes32 vectorId) {
    address user = tx.origin;
    CSVectorsTableData memory vector = CSVectorsTable.get(vectorId);
    require(user == vector.handler, "Reserved for vector handler only.");
    _;
  }

  /**
   * This makes sure that anyone beside the handler can perform an action.
   */
  modifier notHandler(bytes32 vectorId) {
    address user = tx.origin;
    CSVectorsTableData memory vector = CSVectorsTable.get(vectorId);
    require(user != vector.handler, "Reserved for vector handler only.");
    _;
  }

  /**
   * This makes sure that only the handler of the vector performs an action.
   */
  modifier onlyPotential(bytes32 vectorId) {
    address user = tx.origin;
    bytes32 potentialId;
    bool isPotential = false;
    bytes32[] memory potentialIds = CSVectorPotentialsLookupTable.get(vectorId);

    for (uint i = 0; i < potentialIds.length; i++) {
      potentialId = potentialIds[i];
      CSPotentialsTableData memory potential = CSPotentialsTable.get(potentialId);
      isPotential = (user == potential.source);
      if (isPotential) {
        break;
      }
    }

    require(isPotential, "Reserved for vector potentials only.");
    _;
  }

  /**
   * This makes sure that the vector has not been archived.
   */
  modifier notArchived(bytes32 vectorId) {
    CSVectorsTableData memory vector = CSVectorsTable.get(vectorId);
    require(vector.status != VectorStatus.ARCHIVED, "Requires vector to not be archived");
    _;
  }

  /**
   * Make sure that the vector has been archived.
   */
  modifier onlyArchived(bytes32 vectorId) {
    CSVectorsTableData memory vector = CSVectorsTable.get(vectorId);
    require(vector.status == VectorStatus.ARCHIVED, "Requires vector to be archived.");
    _;
  }

  /**
   * Make sure that the vector is discharging, meaning that it did hit full charge capacity and that the handler is pulling token via motions.
   */
  modifier whenDischarging(bytes32 vectorId) {
    CSVectorsTableData memory vector = CSVectorsTable.get(vectorId);
    require(vector.status == VectorStatus.DISCHARGING, "Requires vector to be dicharging.");
    _;
  }

  /**
   * Make sure that the vector is channeling, meaning that it did not hit full charge capacity.
   */
  modifier whenChanneling(bytes32 vectorId) {
    CSVectorsTableData memory vector = CSVectorsTable.get(vectorId);
    require(vector.status == VectorStatus.CHANNELING, "Requires vector to be channeling.");
    _;
  }

  /**
   * Makes sure that the potential is not overloading the vector.
   */
  modifier withCapacityThreshold(bytes32 vectorId, uint256 strength) {
    CSVectorsTableData memory vector = CSVectorsTable.get(vectorId);
    require(
      strength <= vector.capacity - vector.charge,
      "Requires potential strength to not overload vector capacity."
    );
    _;
  }

  /**
   * Make sure the motion hasn't been cancelled.
   */
  modifier notCancelled(bytes32 motionId) {
    CSMotionsTableData memory motion = CSMotionsTable.get(motionId);
    require(motion.status != MotionStatus.CANCELLED, "Requires motion to not be cancelled.");
    _;
  }

  /**
   * Make sure the motion is in progress.
   */
  modifier onlyPending(bytes32 motionId) {
    CSMotionsTableData memory motion = CSMotionsTable.get(motionId);
    require(motion.status == MotionStatus.PENDING, "Requires motion to be pending.");
    _;
  }

  /**
   * Make sure the motion is proceeding.
   */
  modifier onlyProceeding(bytes32 motionId) {
    CSMotionsTableData memory motion = CSMotionsTable.get(motionId);
    require(motion.status == MotionStatus.PROCEEDING, "Requires motion to be proceeding.");
    _;
  }
}