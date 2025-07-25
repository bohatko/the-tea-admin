import '../database.dart';

class BecomeAgentRequestsTable extends SupabaseTable<BecomeAgentRequestsRow> {
  @override
  String get tableName => 'become_agent_requests';

  @override
  BecomeAgentRequestsRow createRow(Map<String, dynamic> data) =>
      BecomeAgentRequestsRow(data);
}

class BecomeAgentRequestsRow extends SupabaseDataRow {
  BecomeAgentRequestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BecomeAgentRequestsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get licenseNumber => getField<String>('license_number');
  set licenseNumber(String? value) => setField<String>('license_number', value);

  String? get agency => getField<String>('agency');
  set agency(String? value) => setField<String>('agency', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
