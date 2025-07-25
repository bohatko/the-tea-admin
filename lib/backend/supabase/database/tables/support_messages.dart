import '../database.dart';

class SupportMessagesTable extends SupabaseTable<SupportMessagesRow> {
  @override
  String get tableName => 'support_messages';

  @override
  SupportMessagesRow createRow(Map<String, dynamic> data) =>
      SupportMessagesRow(data);
}

class SupportMessagesRow extends SupabaseDataRow {
  SupportMessagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SupportMessagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get messageText => getField<String>('message_text');
  set messageText(String? value) => setField<String>('message_text', value);

  bool? get newMessage => getField<bool>('new_message');
  set newMessage(bool? value) => setField<bool>('new_message', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);
}
