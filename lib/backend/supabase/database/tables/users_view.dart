import '../database.dart';

class UsersViewTable extends SupabaseTable<UsersViewRow> {
  @override
  String get tableName => 'users_view';

  @override
  UsersViewRow createRow(Map<String, dynamic> data) => UsersViewRow(data);
}

class UsersViewRow extends SupabaseDataRow {
  UsersViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersViewTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get emailConfirmedAt => getField<DateTime>('email_confirmed_at');
  set emailConfirmedAt(DateTime? value) =>
      setField<DateTime>('email_confirmed_at', value);

  DateTime? get lastSignInAt => getField<DateTime>('last_sign_in_at');
  set lastSignInAt(DateTime? value) =>
      setField<DateTime>('last_sign_in_at', value);
}
