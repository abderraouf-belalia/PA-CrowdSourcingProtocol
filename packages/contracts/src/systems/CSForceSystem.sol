// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { CSSystem } from "./CSSystem.sol";
import { CSVectorsTable, CSVectorsTableData, CSForcesTable, CSForcesTableData, CSMotionsTable, CSMotionsTableData, CSMotionForcesLookupTable, CSVectorPotentialsLookupTable, CSPotentialsTable, CSPotentialsTableData } from "../codegen/index.sol";
import { MotionStatus, ForceDirection } from "../codegen/common.sol";
import { CSAddressUtils } from "./shared.sol";

contract CSForceSystem is CSSystem {
  using CSAddressUtils for address;

  function applyForce(
    bytes32 motionId,
    ForceDirection direction,
    string memory insight
  ) public onlyPending(motionId) returns (bytes32) {
    address source = tx.origin;

    bytes32 forceId = keccak256(abi.encodePacked(block.timestamp, block.prevrandao));

    bytes32 vectorId = CSMotionsTable.getVectorId(motionId);

    bytes32 potentialId = source.getPotential(vectorId);
    CSPotentialsTableData memory potential = CSPotentialsTable.get(potentialId);
    CSVectorsTableData memory vector = CSVectorsTable.get(vectorId);
    CSMotionsTableData memory motion = CSMotionsTable.get(motionId);

    uint power = ((potential.strength * 100) / vector.capacity);

    if (direction == ForceDirection.ALONG) {
      CSMotionsTable.setPush(motionId, motion.push + power);
      if (motion.push > 50) {
        motion.status = MotionStatus.PROCEEDING;
      }
    } else {
      CSMotionsTable.setPull(motionId, motion.pull + power);
      if (motion.pull > 50) {
        motion.status = MotionStatus.HALTING;
      }
    }

    CSForcesTable.set(
      forceId,
      CSForcesTableData({
        power: power,
        direction: direction,
        insight: insight,
        motionId: motionId,
        potentialId: potentialId
      })
    );

    CSMotionForcesLookupTable.pushForceIds(motionId, forceId);

    return forceId;
  }
}