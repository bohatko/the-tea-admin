// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversationsStruct extends BaseStruct {
  ConversationsStruct({
    String? id,
    String? userId,
    String? supportId,
    String? status,
    String? lastMessageText,
    String? lastMessageAt,
    bool? hasUnreadMessages,
    String? createdAt,
    String? updatedAt,
    String? userEmail,
    String? userDisplayName,
    String? userAvatarUrl,
    String? supportEmail,
    String? supportDisplayName,
    String? supportAvatarUrl,
  })  : _id = id,
        _userId = userId,
        _supportId = supportId,
        _status = status,
        _lastMessageText = lastMessageText,
        _lastMessageAt = lastMessageAt,
        _hasUnreadMessages = hasUnreadMessages,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _userEmail = userEmail,
        _userDisplayName = userDisplayName,
        _userAvatarUrl = userAvatarUrl,
        _supportEmail = supportEmail,
        _supportDisplayName = supportDisplayName,
        _supportAvatarUrl = supportAvatarUrl;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "support_id" field.
  String? _supportId;
  String get supportId => _supportId ?? '';
  set supportId(String? val) => _supportId = val;

  bool hasSupportId() => _supportId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "last_message_text" field.
  String? _lastMessageText;
  String get lastMessageText => _lastMessageText ?? '';
  set lastMessageText(String? val) => _lastMessageText = val;

  bool hasLastMessageText() => _lastMessageText != null;

  // "last_message_at" field.
  String? _lastMessageAt;
  String get lastMessageAt => _lastMessageAt ?? '';
  set lastMessageAt(String? val) => _lastMessageAt = val;

  bool hasLastMessageAt() => _lastMessageAt != null;

  // "has_unread_messages" field.
  bool? _hasUnreadMessages;
  bool get hasUnreadMessages => _hasUnreadMessages ?? false;
  set hasUnreadMessages(bool? val) => _hasUnreadMessages = val;

  bool hasHasUnreadMessages() => _hasUnreadMessages != null;

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

  // "user_email" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  set userEmail(String? val) => _userEmail = val;

  bool hasUserEmail() => _userEmail != null;

  // "user_display_name" field.
  String? _userDisplayName;
  String get userDisplayName => _userDisplayName ?? '';
  set userDisplayName(String? val) => _userDisplayName = val;

  bool hasUserDisplayName() => _userDisplayName != null;

  // "user_avatar_url" field.
  String? _userAvatarUrl;
  String get userAvatarUrl => _userAvatarUrl ?? '';
  set userAvatarUrl(String? val) => _userAvatarUrl = val;

  bool hasUserAvatarUrl() => _userAvatarUrl != null;

  // "support_email" field.
  String? _supportEmail;
  String get supportEmail => _supportEmail ?? '';
  set supportEmail(String? val) => _supportEmail = val;

  bool hasSupportEmail() => _supportEmail != null;

  // "support_display_name" field.
  String? _supportDisplayName;
  String get supportDisplayName => _supportDisplayName ?? '';
  set supportDisplayName(String? val) => _supportDisplayName = val;

  bool hasSupportDisplayName() => _supportDisplayName != null;

  // "support_avatar_url" field.
  String? _supportAvatarUrl;
  String get supportAvatarUrl => _supportAvatarUrl ?? '';
  set supportAvatarUrl(String? val) => _supportAvatarUrl = val;

  bool hasSupportAvatarUrl() => _supportAvatarUrl != null;

  static ConversationsStruct fromMap(Map<String, dynamic> data) =>
      ConversationsStruct(
        id: data['id'] as String?,
        userId: data['user_id'] as String?,
        supportId: data['support_id'] as String?,
        status: data['status'] as String?,
        lastMessageText: data['last_message_text'] as String?,
        lastMessageAt: data['last_message_at'] as String?,
        hasUnreadMessages: data['has_unread_messages'] as bool?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        userEmail: data['user_email'] as String?,
        userDisplayName: data['user_display_name'] as String?,
        userAvatarUrl: data['user_avatar_url'] as String?,
        supportEmail: data['support_email'] as String?,
        supportDisplayName: data['support_display_name'] as String?,
        supportAvatarUrl: data['support_avatar_url'] as String?,
      );

  static ConversationsStruct? maybeFromMap(dynamic data) => data is Map
      ? ConversationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'support_id': _supportId,
        'status': _status,
        'last_message_text': _lastMessageText,
        'last_message_at': _lastMessageAt,
        'has_unread_messages': _hasUnreadMessages,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'user_email': _userEmail,
        'user_display_name': _userDisplayName,
        'user_avatar_url': _userAvatarUrl,
        'support_email': _supportEmail,
        'support_display_name': _supportDisplayName,
        'support_avatar_url': _supportAvatarUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'support_id': serializeParam(
          _supportId,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'last_message_text': serializeParam(
          _lastMessageText,
          ParamType.String,
        ),
        'last_message_at': serializeParam(
          _lastMessageAt,
          ParamType.String,
        ),
        'has_unread_messages': serializeParam(
          _hasUnreadMessages,
          ParamType.bool,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'user_email': serializeParam(
          _userEmail,
          ParamType.String,
        ),
        'user_display_name': serializeParam(
          _userDisplayName,
          ParamType.String,
        ),
        'user_avatar_url': serializeParam(
          _userAvatarUrl,
          ParamType.String,
        ),
        'support_email': serializeParam(
          _supportEmail,
          ParamType.String,
        ),
        'support_display_name': serializeParam(
          _supportDisplayName,
          ParamType.String,
        ),
        'support_avatar_url': serializeParam(
          _supportAvatarUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConversationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConversationsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        supportId: deserializeParam(
          data['support_id'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        lastMessageText: deserializeParam(
          data['last_message_text'],
          ParamType.String,
          false,
        ),
        lastMessageAt: deserializeParam(
          data['last_message_at'],
          ParamType.String,
          false,
        ),
        hasUnreadMessages: deserializeParam(
          data['has_unread_messages'],
          ParamType.bool,
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
        userEmail: deserializeParam(
          data['user_email'],
          ParamType.String,
          false,
        ),
        userDisplayName: deserializeParam(
          data['user_display_name'],
          ParamType.String,
          false,
        ),
        userAvatarUrl: deserializeParam(
          data['user_avatar_url'],
          ParamType.String,
          false,
        ),
        supportEmail: deserializeParam(
          data['support_email'],
          ParamType.String,
          false,
        ),
        supportDisplayName: deserializeParam(
          data['support_display_name'],
          ParamType.String,
          false,
        ),
        supportAvatarUrl: deserializeParam(
          data['support_avatar_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConversationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConversationsStruct &&
        id == other.id &&
        userId == other.userId &&
        supportId == other.supportId &&
        status == other.status &&
        lastMessageText == other.lastMessageText &&
        lastMessageAt == other.lastMessageAt &&
        hasUnreadMessages == other.hasUnreadMessages &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        userEmail == other.userEmail &&
        userDisplayName == other.userDisplayName &&
        userAvatarUrl == other.userAvatarUrl &&
        supportEmail == other.supportEmail &&
        supportDisplayName == other.supportDisplayName &&
        supportAvatarUrl == other.supportAvatarUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userId,
        supportId,
        status,
        lastMessageText,
        lastMessageAt,
        hasUnreadMessages,
        createdAt,
        updatedAt,
        userEmail,
        userDisplayName,
        userAvatarUrl,
        supportEmail,
        supportDisplayName,
        supportAvatarUrl
      ]);
}

ConversationsStruct createConversationsStruct({
  String? id,
  String? userId,
  String? supportId,
  String? status,
  String? lastMessageText,
  String? lastMessageAt,
  bool? hasUnreadMessages,
  String? createdAt,
  String? updatedAt,
  String? userEmail,
  String? userDisplayName,
  String? userAvatarUrl,
  String? supportEmail,
  String? supportDisplayName,
  String? supportAvatarUrl,
}) =>
    ConversationsStruct(
      id: id,
      userId: userId,
      supportId: supportId,
      status: status,
      lastMessageText: lastMessageText,
      lastMessageAt: lastMessageAt,
      hasUnreadMessages: hasUnreadMessages,
      createdAt: createdAt,
      updatedAt: updatedAt,
      userEmail: userEmail,
      userDisplayName: userDisplayName,
      userAvatarUrl: userAvatarUrl,
      supportEmail: supportEmail,
      supportDisplayName: supportDisplayName,
      supportAvatarUrl: supportAvatarUrl,
    );
