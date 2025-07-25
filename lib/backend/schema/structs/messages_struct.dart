// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesStruct extends BaseStruct {
  MessagesStruct({
    String? id,
    String? conversationId,
    String? senderId,
    String? senderType,
    String? messageText,
    String? createdAt,
  })  : _id = id,
        _conversationId = conversationId,
        _senderId = senderId,
        _senderType = senderType,
        _messageText = messageText,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "conversation_id" field.
  String? _conversationId;
  String get conversationId => _conversationId ?? '';
  set conversationId(String? val) => _conversationId = val;

  bool hasConversationId() => _conversationId != null;

  // "sender_id" field.
  String? _senderId;
  String get senderId => _senderId ?? '';
  set senderId(String? val) => _senderId = val;

  bool hasSenderId() => _senderId != null;

  // "sender_type" field.
  String? _senderType;
  String get senderType => _senderType ?? '';
  set senderType(String? val) => _senderType = val;

  bool hasSenderType() => _senderType != null;

  // "message_text" field.
  String? _messageText;
  String get messageText => _messageText ?? '';
  set messageText(String? val) => _messageText = val;

  bool hasMessageText() => _messageText != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static MessagesStruct fromMap(Map<String, dynamic> data) => MessagesStruct(
        id: data['id'] as String?,
        conversationId: data['conversation_id'] as String?,
        senderId: data['sender_id'] as String?,
        senderType: data['sender_type'] as String?,
        messageText: data['message_text'] as String?,
        createdAt: data['created_at'] as String?,
      );

  static MessagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'conversation_id': _conversationId,
        'sender_id': _senderId,
        'sender_type': _senderType,
        'message_text': _messageText,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'conversation_id': serializeParam(
          _conversationId,
          ParamType.String,
        ),
        'sender_id': serializeParam(
          _senderId,
          ParamType.String,
        ),
        'sender_type': serializeParam(
          _senderType,
          ParamType.String,
        ),
        'message_text': serializeParam(
          _messageText,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static MessagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessagesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        conversationId: deserializeParam(
          data['conversation_id'],
          ParamType.String,
          false,
        ),
        senderId: deserializeParam(
          data['sender_id'],
          ParamType.String,
          false,
        ),
        senderType: deserializeParam(
          data['sender_type'],
          ParamType.String,
          false,
        ),
        messageText: deserializeParam(
          data['message_text'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MessagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessagesStruct &&
        id == other.id &&
        conversationId == other.conversationId &&
        senderId == other.senderId &&
        senderType == other.senderType &&
        messageText == other.messageText &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, conversationId, senderId, senderType, messageText, createdAt]);
}

MessagesStruct createMessagesStruct({
  String? id,
  String? conversationId,
  String? senderId,
  String? senderType,
  String? messageText,
  String? createdAt,
}) =>
    MessagesStruct(
      id: id,
      conversationId: conversationId,
      senderId: senderId,
      senderType: senderType,
      messageText: messageText,
      createdAt: createdAt,
    );
