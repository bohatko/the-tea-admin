import '../database.dart';

class PropertyStatisticsTable extends SupabaseTable<PropertyStatisticsRow> {
  @override
  String get tableName => 'property_statistics';

  @override
  PropertyStatisticsRow createRow(Map<String, dynamic> data) =>
      PropertyStatisticsRow(data);
}

class PropertyStatisticsRow extends SupabaseDataRow {
  PropertyStatisticsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyStatisticsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  int? get views => getField<int>('views');
  set views(int? value) => setField<int>('views', value);

  int? get saves => getField<int>('saves');
  set saves(int? value) => setField<int>('saves', value);
}
