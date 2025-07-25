import '../database.dart';

class PropertiesWithDetailsTable
    extends SupabaseTable<PropertiesWithDetailsRow> {
  @override
  String get tableName => 'properties_with_details';

  @override
  PropertiesWithDetailsRow createRow(Map<String, dynamic> data) =>
      PropertiesWithDetailsRow(data);
}

class PropertiesWithDetailsRow extends SupabaseDataRow {
  PropertiesWithDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertiesWithDetailsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get bedrooms => getField<String>('bedrooms');
  set bedrooms(String? value) => setField<String>('bedrooms', value);

  String? get bathrooms => getField<String>('bathrooms');
  set bathrooms(String? value) => setField<String>('bathrooms', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  double? get squareMeters => getField<double>('square_meters');
  set squareMeters(double? value) => setField<double>('square_meters', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  List<String> get photoUrls => getListField<String>('photo_urls');
  set photoUrls(List<String>? value) =>
      setListField<String>('photo_urls', value);

  bool? get isFavorite => getField<bool>('is_favorite');
  set isFavorite(bool? value) => setField<bool>('is_favorite', value);
}
