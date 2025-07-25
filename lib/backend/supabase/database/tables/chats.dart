import '../database.dart';

class ChatsTable extends SupabaseTable<ChatsRow> {
  @override
  String get tableName => 'chats';

  @override
  ChatsRow createRow(Map<String, dynamic> data) => ChatsRow(data);
}

class ChatsRow extends SupabaseDataRow {
  ChatsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user1 => getField<String>('user_1');
  set user1(String? value) => setField<String>('user_1', value);

  String? get user2 => getField<String>('user_2');
  set user2(String? value) => setField<String>('user_2', value);

  DateTime? get lastMessageDate => getField<DateTime>('last_message_date');
  set lastMessageDate(DateTime? value) =>
      setField<DateTime>('last_message_date', value);

  String? get lastSender => getField<String>('last_sender');
  set lastSender(String? value) => setField<String>('last_sender', value);

  String? get lastMessageText => getField<String>('last_message_text');
  set lastMessageText(String? value) =>
      setField<String>('last_message_text', value);

  bool? get messageIsRead => getField<bool>('message_is_read');
  set messageIsRead(bool? value) => setField<bool>('message_is_read', value);
}
