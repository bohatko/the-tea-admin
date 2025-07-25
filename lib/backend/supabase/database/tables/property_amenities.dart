import '../database.dart';

class PropertyAmenitiesTable extends SupabaseTable<PropertyAmenitiesRow> {
  @override
  String get tableName => 'property_amenities';

  @override
  PropertyAmenitiesRow createRow(Map<String, dynamic> data) =>
      PropertyAmenitiesRow(data);
}

class PropertyAmenitiesRow extends SupabaseDataRow {
  PropertyAmenitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyAmenitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get bedroomsDouble => getField<String>('bedrooms_double');
  set bedroomsDouble(String? value) =>
      setField<String>('bedrooms_double', value);

  String? get bedroomsSingle => getField<String>('bedrooms_single');
  set bedroomsSingle(String? value) =>
      setField<String>('bedrooms_single', value);

  String? get bathroomsFull => getField<String>('bathrooms_full');
  set bathroomsFull(String? value) => setField<String>('bathrooms_full', value);

  String? get bathroomsHalf => getField<String>('bathrooms_half');
  set bathroomsHalf(String? value) => setField<String>('bathrooms_half', value);

  String? get bathroomsEnsuite => getField<String>('bathrooms_ensuite');
  set bathroomsEnsuite(String? value) =>
      setField<String>('bathrooms_ensuite', value);

  List<String> get rooms => getListField<String>('rooms');
  set rooms(List<String>? value) => setListField<String>('rooms', value);

  List<String> get flooring => getListField<String>('flooring');
  set flooring(List<String>? value) => setListField<String>('flooring', value);

  List<String> get heatingCooling => getListField<String>('heating_cooling');
  set heatingCooling(List<String>? value) =>
      setListField<String>('heating_cooling', value);

  List<String> get appliancesIncluded =>
      getListField<String>('appliances_included');
  set appliancesIncluded(List<String>? value) =>
      setListField<String>('appliances_included', value);

  List<String> get features => getListField<String>('features');
  set features(List<String>? value) => setListField<String>('features', value);

  List<String> get laundry => getListField<String>('laundry');
  set laundry(List<String>? value) => setListField<String>('laundry', value);

  List<String> get view => getListField<String>('view');
  set view(List<String>? value) => setListField<String>('view', value);

  List<String> get parking => getListField<String>('parking');
  set parking(List<String>? value) => setListField<String>('parking', value);

  int? get parkingNumber => getField<int>('parking_number');
  set parkingNumber(int? value) => setField<int>('parking_number', value);

  bool? get accessibility => getField<bool>('accessibility');
  set accessibility(bool? value) => setField<bool>('accessibility', value);

  List<String> get exteriorFinish => getListField<String>('exterior_finish');
  set exteriorFinish(List<String>? value) =>
      setListField<String>('exterior_finish', value);
}
