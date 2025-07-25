// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsStruct extends BaseStruct {
  NotificationsStruct({
    String? id,
    String? createdAt,
    String? userId,
    String? body,
    String? logs,
    String? type,
    String? page,
    String? title,
    String? status,
    String? sentAt,
  })  : _id = id,
        _createdAt = createdAt,
        _userId = userId,
        _body = body,
        _logs = logs,
        _type = type,
        _page = page,
        _title = title,
        _status = status,
        _sentAt = sentAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  set body(String? val) => _body = val;

  bool hasBody() => _body != null;

  // "logs" field.
  String? _logs;
  String get logs => _logs ?? '';
  set logs(String? val) => _logs = val;

  bool hasLogs() => _logs != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "page" field.
  String? _page;
  String get page => _page ?? '';
  set page(String? val) => _page = val;

  bool hasPage() => _page != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "sent_at" field.
  String? _sentAt;
  String get sentAt => _sentAt ?? '';
  set sentAt(String? val) => _sentAt = val;

  bool hasSentAt() => _sentAt != null;

  static NotificationsStruct fromMap(Map<String, dynamic> data) =>
      NotificationsStruct(
        id: data['id'] as String?,
        createdAt: data['created_at'] as String?,
        userId: data['user_id'] as String?,
        body: data['body'] as String?,
        logs: data['logs'] as String?,
        type: data['type'] as String?,
        page: data['page'] as String?,
        title: data['title'] as String?,
        status: data['status'] as String?,
        sentAt: data['sent_at'] as String?,
      );

  static NotificationsStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'user_id': _userId,
        'body': _body,
        'logs': _logs,
        'type': _type,
        'page': _page,
        'title': _title,
        'status': _status,
        'sent_at': _sentAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'body': serializeParam(
          _body,
          ParamType.String,
        ),
        'logs': serializeParam(
          _logs,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'page': serializeParam(
          _page,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'sent_at': serializeParam(
          _sentAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        body: deserializeParam(
          data['body'],
          ParamType.String,
          false,
        ),
        logs: deserializeParam(
          data['logs'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        page: deserializeParam(
          data['page'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        sentAt: deserializeParam(
          data['sent_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationsStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        userId == other.userId &&
        body == other.body &&
        logs == other.logs &&
        type == other.type &&
        page == other.page &&
        title == other.title &&
        status == other.status &&
        sentAt == other.sentAt;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, createdAt, userId, body, logs, type, page, title, status, sentAt]);
}

NotificationsStruct createNotificationsStruct({
  String? id,
  String? createdAt,
  String? userId,
  String? body,
  String? logs,
  String? type,
  String? page,
  String? title,
  String? status,
  String? sentAt,
}) =>
    NotificationsStruct(
      id: id,
      createdAt: createdAt,
      userId: userId,
      body: body,
      logs: logs,
      type: type,
      page: page,
      title: title,
      status: status,
      sentAt: sentAt,
    );
