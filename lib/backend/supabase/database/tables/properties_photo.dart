import '../database.dart';

class PropertiesPhotoTable extends SupabaseTable<PropertiesPhotoRow> {
  @override
  String get tableName => 'properties_photo';

  @override
  PropertiesPhotoRow createRow(Map<String, dynamic> data) =>
      PropertiesPhotoRow(data);
}

class PropertiesPhotoRow extends SupabaseDataRow {
  PropertiesPhotoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertiesPhotoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  bool? get mainPhoto => getField<bool>('main_photo');
  set mainPhoto(bool? value) => setField<bool>('main_photo', value);

  String? get blurhash => getField<String>('blurhash');
  set blurhash(String? value) => setField<String>('blurhash', value);
}
