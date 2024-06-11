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
import { MotionStatus } from "./../common.sol";

struct CSMotionsTableData {
  bytes32 vectorId;
  address target;
  uint256 momentum;
  uint256 push;
  uint256 pull;
  uint256 lifetime;
  MotionStatus status;
  string insight;
}

library CSMotionsTable {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "csp", name: "CSMotionsTable", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x7462637370000000000000000000000043534d6f74696f6e735461626c650000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x00b5070120142020202001000000000000000000000000000000000000000000);

  // Hex-encoded key schema of (bytes32)
  Schema constant _keySchema = Schema.wrap(0x002001005f000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (bytes32, address, uint256, uint256, uint256, uint256, uint8, string)
  Schema constant _valueSchema = Schema.wrap(0x00b507015f611f1f1f1f00c50000000000000000000000000000000000000000);

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
    fieldNames = new string[](8);
    fieldNames[0] = "vectorId";
    fieldNames[1] = "target";
    fieldNames[2] = "momentum";
    fieldNames[3] = "push";
    fieldNames[4] = "pull";
    fieldNames[5] = "lifetime";
    fieldNames[6] = "status";
    fieldNames[7] = "insight";
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
   * @notice Get vectorId.
   */
  function getVectorId(bytes32 id) internal view returns (bytes32 vectorId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Get vectorId.
   */
  function _getVectorId(bytes32 id) internal view returns (bytes32 vectorId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Set vectorId.
   */
  function setVectorId(bytes32 id, bytes32 vectorId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((vectorId)), _fieldLayout);
  }

  /**
   * @notice Set vectorId.
   */
  function _setVectorId(bytes32 id, bytes32 vectorId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((vectorId)), _fieldLayout);
  }

  /**
   * @notice Get target.
   */
  function getTarget(bytes32 id) internal view returns (address target) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /**
   * @notice Get target.
   */
  function _getTarget(bytes32 id) internal view returns (address target) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /**
   * @notice Set target.
   */
  function setTarget(bytes32 id, address target) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((target)), _fieldLayout);
  }

  /**
   * @notice Set target.
   */
  function _setTarget(bytes32 id, address target) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((target)), _fieldLayout);
  }

  /**
   * @notice Get momentum.
   */
  function getMomentum(bytes32 id) internal view returns (uint256 momentum) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get momentum.
   */
  function _getMomentum(bytes32 id) internal view returns (uint256 momentum) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set momentum.
   */
  function setMomentum(bytes32 id, uint256 momentum) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((momentum)), _fieldLayout);
  }

  /**
   * @notice Set momentum.
   */
  function _setMomentum(bytes32 id, uint256 momentum) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((momentum)), _fieldLayout);
  }

  /**
   * @notice Get push.
   */
  function getPush(bytes32 id) internal view returns (uint256 push) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get push.
   */
  function _getPush(bytes32 id) internal view returns (uint256 push) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set push.
   */
  function setPush(bytes32 id, uint256 push) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((push)), _fieldLayout);
  }

  /**
   * @notice Set push.
   */
  function _setPush(bytes32 id, uint256 push) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((push)), _fieldLayout);
  }

  /**
   * @notice Get pull.
   */
  function getPull(bytes32 id) internal view returns (uint256 pull) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get pull.
   */
  function _getPull(bytes32 id) internal view returns (uint256 pull) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set pull.
   */
  function setPull(bytes32 id, uint256 pull) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((pull)), _fieldLayout);
  }

  /**
   * @notice Set pull.
   */
  function _setPull(bytes32 id, uint256 pull) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((pull)), _fieldLayout);
  }

  /**
   * @notice Get lifetime.
   */
  function getLifetime(bytes32 id) internal view returns (uint256 lifetime) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get lifetime.
   */
  function _getLifetime(bytes32 id) internal view returns (uint256 lifetime) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set lifetime.
   */
  function setLifetime(bytes32 id, uint256 lifetime) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((lifetime)), _fieldLayout);
  }

  /**
   * @notice Set lifetime.
   */
  function _setLifetime(bytes32 id, uint256 lifetime) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((lifetime)), _fieldLayout);
  }

  /**
   * @notice Get status.
   */
  function getStatus(bytes32 id) internal view returns (MotionStatus status) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 6, _fieldLayout);
    return MotionStatus(uint8(bytes1(_blob)));
  }

  /**
   * @notice Get status.
   */
  function _getStatus(bytes32 id) internal view returns (MotionStatus status) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 6, _fieldLayout);
    return MotionStatus(uint8(bytes1(_blob)));
  }

  /**
   * @notice Set status.
   */
  function setStatus(bytes32 id, MotionStatus status) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 6, abi.encodePacked(uint8(status)), _fieldLayout);
  }

  /**
   * @notice Set status.
   */
  function _setStatus(bytes32 id, MotionStatus status) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setStaticField(_tableId, _keyTuple, 6, abi.encodePacked(uint8(status)), _fieldLayout);
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
  function get(bytes32 id) internal view returns (CSMotionsTableData memory _table) {
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
  function _get(bytes32 id) internal view returns (CSMotionsTableData memory _table) {
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
    bytes32 vectorId,
    address target,
    uint256 momentum,
    uint256 push,
    uint256 pull,
    uint256 lifetime,
    MotionStatus status,
    string memory insight
  ) internal {
    bytes memory _staticData = encodeStatic(vectorId, target, momentum, push, pull, lifetime, status);

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
    bytes32 vectorId,
    address target,
    uint256 momentum,
    uint256 push,
    uint256 pull,
    uint256 lifetime,
    MotionStatus status,
    string memory insight
  ) internal {
    bytes memory _staticData = encodeStatic(vectorId, target, momentum, push, pull, lifetime, status);

    EncodedLengths _encodedLengths = encodeLengths(insight);
    bytes memory _dynamicData = encodeDynamic(insight);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(bytes32 id, CSMotionsTableData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.vectorId,
      _table.target,
      _table.momentum,
      _table.push,
      _table.pull,
      _table.lifetime,
      _table.status
    );

    EncodedLengths _encodedLengths = encodeLengths(_table.insight);
    bytes memory _dynamicData = encodeDynamic(_table.insight);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = id;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(bytes32 id, CSMotionsTableData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.vectorId,
      _table.target,
      _table.momentum,
      _table.push,
      _table.pull,
      _table.lifetime,
      _table.status
    );

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
  )
    internal
    pure
    returns (
      bytes32 vectorId,
      address target,
      uint256 momentum,
      uint256 push,
      uint256 pull,
      uint256 lifetime,
      MotionStatus status
    )
  {
    vectorId = (Bytes.getBytes32(_blob, 0));

    target = (address(Bytes.getBytes20(_blob, 32)));

    momentum = (uint256(Bytes.getBytes32(_blob, 52)));

    push = (uint256(Bytes.getBytes32(_blob, 84)));

    pull = (uint256(Bytes.getBytes32(_blob, 116)));

    lifetime = (uint256(Bytes.getBytes32(_blob, 148)));

    status = MotionStatus(uint8(Bytes.getBytes1(_blob, 180)));
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
  ) internal pure returns (CSMotionsTableData memory _table) {
    (
      _table.vectorId,
      _table.target,
      _table.momentum,
      _table.push,
      _table.pull,
      _table.lifetime,
      _table.status
    ) = decodeStatic(_staticData);

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
    bytes32 vectorId,
    address target,
    uint256 momentum,
    uint256 push,
    uint256 pull,
    uint256 lifetime,
    MotionStatus status
  ) internal pure returns (bytes memory) {
    return abi.encodePacked(vectorId, target, momentum, push, pull, lifetime, status);
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
    bytes32 vectorId,
    address target,
    uint256 momentum,
    uint256 push,
    uint256 pull,
    uint256 lifetime,
    MotionStatus status,
    string memory insight
  ) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(vectorId, target, momentum, push, pull, lifetime, status);

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