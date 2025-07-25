import '../database.dart';

class PriceHistoryTable extends SupabaseTable<PriceHistoryRow> {
  @override
  String get tableName => 'price_history';

  @override
  PriceHistoryRow createRow(Map<String, dynamic> data) => PriceHistoryRow(data);
}

class PriceHistoryRow extends SupabaseDataRow {
  PriceHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PriceHistoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get event => getField<String>('event');
  set event(String? value) => setField<String>('event', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);
}
