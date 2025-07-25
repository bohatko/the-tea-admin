import '../database.dart';

class UserWithLatestRequestStatusTable
    extends SupabaseTable<UserWithLatestRequestStatusRow> {
  @override
  String get tableName => 'user_with_latest_request_status';

  @override
  UserWithLatestRequestStatusRow createRow(Map<String, dynamic> data) =>
      UserWithLatestRequestStatusRow(data);
}

class UserWithLatestRequestStatusRow extends SupabaseDataRow {
  UserWithLatestRequestStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserWithLatestRequestStatusTable();

  String? get userRole => getField<String>('user_role');
  set userRole(String? value) => setField<String>('user_role', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get requestStatus => getField<String>('request_status');
  set requestStatus(String? value) => setField<String>('request_status', value);
}
