// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    String? userId,
    String? email,
    String? displayName,
    String? role,
    String? avatarUrl,
    String? createdAt,
    String? updatedAt,
    String? lastSignInAt,
    bool? isDeleted,
    int? totalDevicesCount,
  })  : _userId = userId,
        _email = email,
        _displayName = displayName,
        _role = role,
        _avatarUrl = avatarUrl,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _lastSignInAt = lastSignInAt,
        _isDeleted = isDeleted,
        _totalDevicesCount = totalDevicesCount;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "avatar_url" field.
  String? _avatarUrl;
  String get avatarUrl => _avatarUrl ?? '';
  set avatarUrl(String? val) => _avatarUrl = val;

  bool hasAvatarUrl() => _avatarUrl != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "last_sign_in_at" field.
  String? _lastSignInAt;
  String get lastSignInAt => _lastSignInAt ?? '';
  set lastSignInAt(String? val) => _lastSignInAt = val;

  bool hasLastSignInAt() => _lastSignInAt != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  // "total_devices_count" field.
  int? _totalDevicesCount;
  int get totalDevicesCount => _totalDevicesCount ?? 0;
  set totalDevicesCount(int? val) => _totalDevicesCount = val;

  void incrementTotalDevicesCount(int amount) =>
      totalDevicesCount = totalDevicesCount + amount;

  bool hasTotalDevicesCount() => _totalDevicesCount != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        userId: data['user_id'] as String?,
        email: data['email'] as String?,
        displayName: data['display_name'] as String?,
        role: data['role'] as String?,
        avatarUrl: data['avatar_url'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        lastSignInAt: data['last_sign_in_at'] as String?,
        isDeleted: data['is_deleted'] as bool?,
        totalDevicesCount: castToType<int>(data['total_devices_count']),
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user_id': _userId,
        'email': _email,
        'display_name': _displayName,
        'role': _role,
        'avatar_url': _avatarUrl,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'last_sign_in_at': _lastSignInAt,
        'is_deleted': _isDeleted,
        'total_devices_count': _totalDevicesCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'avatar_url': serializeParam(
          _avatarUrl,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'last_sign_in_at': serializeParam(
          _lastSignInAt,
          ParamType.String,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'total_devices_count': serializeParam(
          _totalDevicesCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        avatarUrl: deserializeParam(
          data['avatar_url'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        lastSignInAt: deserializeParam(
          data['last_sign_in_at'],
          ParamType.String,
          false,
        ),
        isDeleted: deserializeParam(
          data['is_deleted'],
          ParamType.bool,
          false,
        ),
        totalDevicesCount: deserializeParam(
          data['total_devices_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        userId == other.userId &&
        email == other.email &&
        displayName == other.displayName &&
        role == other.role &&
        avatarUrl == other.avatarUrl &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        lastSignInAt == other.lastSignInAt &&
        isDeleted == other.isDeleted &&
        totalDevicesCount == other.totalDevicesCount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userId,
        email,
        displayName,
        role,
        avatarUrl,
        createdAt,
        updatedAt,
        lastSignInAt,
        isDeleted,
        totalDevicesCount
      ]);
}

UsersStruct createUsersStruct({
  String? userId,
  String? email,
  String? displayName,
  String? role,
  String? avatarUrl,
  String? createdAt,
  String? updatedAt,
  String? lastSignInAt,
  bool? isDeleted,
  int? totalDevicesCount,
}) =>
    UsersStruct(
      userId: userId,
      email: email,
      displayName: displayName,
      role: role,
      avatarUrl: avatarUrl,
      createdAt: createdAt,
      updatedAt: updatedAt,
      lastSignInAt: lastSignInAt,
      isDeleted: isDeleted,
      totalDevicesCount: totalDevicesCount,
    );
