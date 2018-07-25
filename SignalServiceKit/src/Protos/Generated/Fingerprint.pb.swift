// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Fingerprint.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

/// iOS - since we use a modern proto-compiler, we must specify
/// the legacy proto format.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct FingerprintProtos_LogicalFingerprint {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///  optional bytes identifier = 2;
  var identityData: Data {
    get {return _identityData ?? SwiftProtobuf.Internal.emptyData}
    set {_identityData = newValue}
  }
  /// Returns true if `identityData` has been explicitly set.
  var hasIdentityData: Bool {return self._identityData != nil}
  /// Clears the value of `identityData`. Subsequent reads from it will return its default value.
  mutating func clearIdentityData() {self._identityData = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _identityData: Data? = nil
}

struct FingerprintProtos_LogicalFingerprints {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var version: UInt32 {
    get {return _storage._version ?? 0}
    set {_uniqueStorage()._version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  var hasVersion: Bool {return _storage._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  mutating func clearVersion() {_storage._version = nil}

  var localFingerprint: FingerprintProtos_LogicalFingerprint {
    get {return _storage._localFingerprint ?? FingerprintProtos_LogicalFingerprint()}
    set {_uniqueStorage()._localFingerprint = newValue}
  }
  /// Returns true if `localFingerprint` has been explicitly set.
  var hasLocalFingerprint: Bool {return _storage._localFingerprint != nil}
  /// Clears the value of `localFingerprint`. Subsequent reads from it will return its default value.
  mutating func clearLocalFingerprint() {_storage._localFingerprint = nil}

  var remoteFingerprint: FingerprintProtos_LogicalFingerprint {
    get {return _storage._remoteFingerprint ?? FingerprintProtos_LogicalFingerprint()}
    set {_uniqueStorage()._remoteFingerprint = newValue}
  }
  /// Returns true if `remoteFingerprint` has been explicitly set.
  var hasRemoteFingerprint: Bool {return _storage._remoteFingerprint != nil}
  /// Clears the value of `remoteFingerprint`. Subsequent reads from it will return its default value.
  mutating func clearRemoteFingerprint() {_storage._remoteFingerprint = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "FingerprintProtos"

extension FingerprintProtos_LogicalFingerprint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".LogicalFingerprint"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "identityData"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self._identityData)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._identityData {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: FingerprintProtos_LogicalFingerprint) -> Bool {
    if self._identityData != other._identityData {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension FingerprintProtos_LogicalFingerprints: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".LogicalFingerprints"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .same(proto: "localFingerprint"),
    3: .same(proto: "remoteFingerprint"),
  ]

  fileprivate class _StorageClass {
    var _version: UInt32? = nil
    var _localFingerprint: FingerprintProtos_LogicalFingerprint? = nil
    var _remoteFingerprint: FingerprintProtos_LogicalFingerprint? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _version = source._version
      _localFingerprint = source._localFingerprint
      _remoteFingerprint = source._remoteFingerprint
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularUInt32Field(value: &_storage._version)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._localFingerprint)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._remoteFingerprint)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._version {
        try visitor.visitSingularUInt32Field(value: v, fieldNumber: 1)
      }
      if let v = _storage._localFingerprint {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._remoteFingerprint {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: FingerprintProtos_LogicalFingerprints) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._version != other_storage._version {return false}
        if _storage._localFingerprint != other_storage._localFingerprint {return false}
        if _storage._remoteFingerprint != other_storage._remoteFingerprint {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
