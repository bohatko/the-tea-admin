import '../database.dart';

class UserWithAgentStatusTable extends SupabaseTable<UserWithAgentStatusRow> {
  @override
  String get tableName => 'user_with_agent_status';

  @override
  UserWithAgentStatusRow createRow(Map<String, dynamic> data) =>
      UserWithAgentStatusRow(data);
}

class UserWithAgentStatusRow extends SupabaseDataRow {
  UserWithAgentStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserWithAgentStatusTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String? get userRole => getField<String>('user_role');
  set userRole(String? value) => setField<String>('user_role', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get agentStatus => getField<String>('agent_status');
  set agentStatus(String? value) => setField<String>('agent_status', value);
}
