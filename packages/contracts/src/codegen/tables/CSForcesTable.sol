// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

// Import user types
import { ForceDirection } from "./../common.sol";

struct CSForcesTableData {
  bytes32 motionId;
  bytes32 potentialId;
  uint256 power;
  ForceDirection direction;
  string insight;
}

library CSForcesTable {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "csp", name: "CSForcesTable", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x746263737000000000000000000000004353466f726365735461626c65000000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0061040120202001000000000000000000000000000000000000000000000000);

  // Hex-encoded key schema of (bytes32)
  Schema constant _keySchema = Schema.wrap(0x002001005f000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (bytes32, bytes32, uint256, uint8, string)
  Schema constant _valueSchema = Schema.wrap(0x006104015f5f1f00c50000000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "id";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](5);
    fieldNames[0] = "motionId";
    fieldNames[1] = "potentialId";
    fieldNames[2] = "power";
    fieldNames[3] = "direction";
    fieldNames[4] = "insight";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get motionId.
   */
  function getMotionId(bytes32 id) internal view returns (bytes32 motionId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Get motionId.
   */
  function _getMotionId(bytes32 id) internal view returns (bytes32 motionId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Set motionId.
   */
  function setMotionId(bytes32 id, bytes32 motionId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((motionId)), _fieldLayout);
  }

  /**
   * @notice Set motionId.
   */
  function _setMotionId(bytes32 id, bytes32 motionId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((motionId)), _fieldLayout);
  }

  /**
   * @notice Get potentialId.
   */
  function getPotentialId(bytes32 id) internal view returns (bytes32 potentialId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Get potentialId.
   */
  function _getPotentialId(bytes32 id) internal view returns (bytes32 potentialId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Set potentialId.
   */
  function setPotentialId(bytes32 id, bytes32 potentialId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((potentialId)), _fieldLayout);
  }

  /**
   * @notice Set potentialId.
   */
  function _setPotentialId(bytes32 id, bytes32 potentialId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((potentialId)), _fieldLayout);
  }

  /**
   * @notice Get power.
   */
  function getPower(bytes32 id) internal view returns (uint256 power) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get power.
   */
  function _getPower(bytes32 id) internal view returns (uint256 power) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set power.
   */
  function setPower(bytes32 id, uint256 power) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((power)), _fieldLayout);
  }

  /**
   * @notice Set power.
   */
  function _setPower(bytes32 id, uint256 power) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((power)), _fieldLayout);
  }

  /**
   * @notice Get direction.
   */
  function getDirection(bytes32 id) internal view returns (ForceDirection direction) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return ForceDirection(uint8(bytes1(_blob)));
  }

  /**
   * @notice Get direction.
   */
  function _getDirection(bytes32 id) internal view returns (ForceDirection direction) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return ForceDirection(uint8(bytes1(_blob)));
  }

  /**
   * @notice Set direction.
   */
  function setDirection(bytes32 id, ForceDirection direction) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked(uint8(direction)), _fieldLayout);
  }

  /**
   * @notice Set direction.
   */
  function _setDirection(bytes32 id, ForceDirection direction) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked(uint8(direction)), _fieldLayout);
  }

  /**
   * @notice Get insight.
   */
  function getInsight(bytes32 id) internal view returns (string memory insight) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 0);
    return (string(_blob));
  }

  /**
   * @notice Get insight.
   */
  function _getInsight(bytes32 id) internal view returns (string memory insight) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 0);
    return (string(_blob));
  }

  /**
   * @notice Set insight.
   */
  function setInsight(bytes32 id, string memory insight) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setDynamicField(_tableId, _keyTuple, 0, bytes((insight)));
  }

  /**
   * @notice Set insight.
   */
  function _setInsight(bytes32 id, string memory insight) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setDynamicField(_tableId, _keyTuple, 0, bytes((insight)));
  }

  /**
   * @notice Get the length of insight.
   */
  function lengthInsight(bytes32 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    uint256 _byteLength = StoreSwitch.getDynamicFieldLength(_tableId, _keyTuple, 0);
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * @notice Get the length of insight.
   */
  function _lengthInsight(bytes32 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    uint256 _byteLength = StoreCore.getDynamicFieldLength(_tableId, _keyTuple, 0);
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * @notice Get an item of insight.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function getItemInsight(bytes32 id, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    unchecked {
      bytes memory _blob = StoreSwitch.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 1, (_index + 1) * 1);
      return (string(_blob));
    }
  }

  /**
   * @notice Get an item of insight.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function _getItemInsight(bytes32 id, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    unchecked {
      bytes memory _blob = StoreCore.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 1, (_index + 1) * 1);
      return (string(_blob));
    }
  }

  /**
   * @notice Push a slice to insight.
   */
  function pushInsight(bytes32 id, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.pushToDynamicField(_tableId, _keyTuple, 0, bytes((_slice)));
  }

  /**
   * @notice Push a slice to insight.
   */
  function _pushInsight(bytes32 id, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.pushToDynamicField(_tableId, _keyTuple, 0, bytes((_slice)));
  }

  /**
   * @notice Pop a slice from insight.
   */
  function popInsight(bytes32 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.popFromDynamicField(_tableId, _keyTuple, 0, 1);
  }

  /**
   * @notice Pop a slice from insight.
   */
  function _popInsight(bytes32 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.popFromDynamicField(_tableId, _keyTuple, 0, 1);
  }

  /**
   * @notice Update a slice of insight at `_index`.
   */
  function updateInsight(bytes32 id, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    unchecked {
      bytes memory _encoded = bytes((_slice));
      StoreSwitch.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 1), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Update a slice of insight at `_index`.
   */
  function _updateInsight(bytes32 id, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    unchecked {
      bytes memory _encoded = bytes((_slice));
      StoreCore.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 1), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Get the full data.
   */
  function get(bytes32 id) internal view returns (CSForcesTableData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data.
   */
  function _get(bytes32 id) internal view returns (CSForcesTableData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(
    bytes32 id,
    bytes32 motionId,
    bytes32 potentialId,
    uint256 power,
    ForceDirection direction,
    string memory insight
  ) internal {
    bytes memory _staticData = encodeStatic(motionId, potentialId, power, direction);

    EncodedLengths _encodedLengths = encodeLengths(insight);
    bytes memory _dynamicData = encodeDynamic(insight);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(
    bytes32 id,
    bytes32 motionId,
    bytes32 potentialId,
    uint256 power,
    ForceDirection direction,
    string memory insight
  ) internal {
    bytes memory _staticData = encodeStatic(motionId, potentialId, power, direction);

    EncodedLengths _encodedLengths = encodeLengths(insight);
    bytes memory _dynamicData = encodeDynamic(insight);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(bytes32 id, CSForcesTableData memory _table) internal {
    bytes memory _staticData = encodeStatic(_table.motionId, _table.potentialId, _table.power, _table.direction);

    EncodedLengths _encodedLengths = encodeLengths(_table.insight);
    bytes memory _dynamicData = encodeDynamic(_table.insight);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(bytes32 id, CSForcesTableData memory _table) internal {
    bytes memory _staticData = encodeStatic(_table.motionId, _table.potentialId, _table.power, _table.direction);

    EncodedLengths _encodedLengths = encodeLengths(_table.insight);
    bytes memory _dynamicData = encodeDynamic(_table.insight);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(
    bytes memory _blob
  ) internal pure returns (bytes32 motionId, bytes32 potentialId, uint256 power, ForceDirection direction) {
    motionId = (Bytes.getBytes32(_blob, 0));

    potentialId = (Bytes.getBytes32(_blob, 32));

    power = (uint256(Bytes.getBytes32(_blob, 64)));

    direction = ForceDirection(uint8(Bytes.getBytes1(_blob, 96)));
  }

  /**
   * @notice Decode the tightly packed blob of dynamic data using the encoded lengths.
   */
  function decodeDynamic(
    EncodedLengths _encodedLengths,
    bytes memory _blob
  ) internal pure returns (string memory insight) {
    uint256 _start;
    uint256 _end;
    unchecked {
      _end = _encodedLengths.atIndex(0);
    }
    insight = (string(SliceLib.getSubslice(_blob, _start, _end).toBytes()));
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   * @param _encodedLengths Encoded lengths of dynamic fields.
   * @param _dynamicData Tightly packed dynamic fields.
   */
  function decode(
    bytes memory _staticData,
    EncodedLengths _encodedLengths,
    bytes memory _dynamicData
  ) internal pure returns (CSForcesTableData memory _table) {
    (_table.motionId, _table.potentialId, _table.power, _table.direction) = decodeStatic(_staticData);

    (_table.insight) = decodeDynamic(_encodedLengths, _dynamicData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(bytes32 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(bytes32 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(
    bytes32 motionId,
    bytes32 potentialId,
    uint256 power,
    ForceDirection direction
  ) internal pure returns (bytes memory) {
    return abi.encodePacked(motionId, potentialId, power, direction);
  }

  /**
   * @notice Tightly pack dynamic data lengths using this table's schema.
   * @return _encodedLengths The lengths of the dynamic fields (packed into a single bytes32 value).
   */
  function encodeLengths(string memory insight) internal pure returns (EncodedLengths _encodedLengths) {
    // Lengths are effectively checked during copy by 2**40 bytes exceeding gas limits
    unchecked {
      _encodedLengths = EncodedLengthsLib.pack(bytes(insight).length);
    }
  }

  /**
   * @notice Tightly pack dynamic (variable length) data using this table's schema.
   * @return The dynamic data, encoded into a sequence of bytes.
   */
  function encodeDynamic(string memory insight) internal pure returns (bytes memory) {
    return abi.encodePacked(bytes((insight)));
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(
    bytes32 motionId,
    bytes32 potentialId,
    uint256 power,
    ForceDirection direction,
    string memory insight
  ) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(motionId, potentialId, power, direction);

    EncodedLengths _encodedLengths = encodeLengths(insight);
    bytes memory _dynamicData = encodeDynamic(insight);

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(bytes32 id) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    return _keyTuple;
  }
}