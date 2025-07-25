import '../database.dart';

class PropertiesTable extends SupabaseTable<PropertiesRow> {
  @override
  String get tableName => 'properties';

  @override
  PropertiesRow createRow(Map<String, dynamic> data) => PropertiesRow(data);
}

class PropertiesRow extends SupabaseDataRow {
  PropertiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertiesTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  String? get bedrooms => getField<String>('bedrooms');
  set bedrooms(String? value) => setField<String>('bedrooms', value);

  String? get bathrooms => getField<String>('bathrooms');
  set bathrooms(String? value) => setField<String>('bathrooms', value);

  int? get yearBuilt => getField<int>('year_built');
  set yearBuilt(int? value) => setField<int>('year_built', value);

  int? get yearStructuralRemodelComplete =>
      getField<int>('year_structural_remodel_complete');
  set yearStructuralRemodelComplete(int? value) =>
      setField<int>('year_structural_remodel_complete', value);

  double? get hoaFee => getField<double>('hoa_fee');
  set hoaFee(double? value) => setField<double>('hoa_fee', value);

  String? get ber => getField<String>('ber');
  set ber(String? value) => setField<String>('ber', value);

  String? get propertyLongDescription =>
      getField<String>('property_long_description');
  set propertyLongDescription(String? value) =>
      setField<String>('property_long_description', value);

  String? get asignedUser => getField<String>('asigned_user');
  set asignedUser(String? value) => setField<String>('asigned_user', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get floorplanUrl => getField<String>('floorplan_url');
  set floorplanUrl(String? value) => setField<String>('floorplan_url', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  double? get squareMeters => getField<double>('square_meters');
  set squareMeters(double? value) => setField<double>('square_meters', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  double? get livableArea => getField<double>('livable_area');
  set livableArea(double? value) => setField<double>('livable_area', value);

  double? get landArea => getField<double>('land_area');
  set landArea(double? value) => setField<double>('land_area', value);

  bool? get newConstruction => getField<bool>('new_construction');
  set newConstruction(bool? value) => setField<bool>('new_construction', value);

  String? get specialConditions => getField<String>('special_conditions');
  set specialConditions(String? value) =>
      setField<String>('special_conditions', value);

  bool? get protectedStructure => getField<bool>('protected_structure');
  set protectedStructure(bool? value) =>
      setField<bool>('protected_structure', value);

  double? get annualTaxAmount => getField<double>('annual_tax_amount');
  set annualTaxAmount(double? value) =>
      setField<double>('annual_tax_amount', value);

  double? get taxAssessedValue => getField<double>('tax_assessed_value');
  set taxAssessedValue(double? value) =>
      setField<double>('tax_assessed_value', value);
}
