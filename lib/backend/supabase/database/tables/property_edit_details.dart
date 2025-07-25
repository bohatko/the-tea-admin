import '../database.dart';

class PropertyEditDetailsTable extends SupabaseTable<PropertyEditDetailsRow> {
  @override
  String get tableName => 'property_edit_details';

  @override
  PropertyEditDetailsRow createRow(Map<String, dynamic> data) =>
      PropertyEditDetailsRow(data);
}

class PropertyEditDetailsRow extends SupabaseDataRow {
  PropertyEditDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyEditDetailsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  List<String> get photoUrls => getListField<String>('photo_urls');
  set photoUrls(List<String>? value) =>
      setListField<String>('photo_urls', value);

  String? get floorplan => getField<String>('floorplan');
  set floorplan(String? value) => setField<String>('floorplan', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  String? get bedrooms => getField<String>('bedrooms');
  set bedrooms(String? value) => setField<String>('bedrooms', value);

  String? get bathrooms => getField<String>('bathrooms');
  set bathrooms(String? value) => setField<String>('bathrooms', value);

  double? get squareMeters => getField<double>('square_meters');
  set squareMeters(double? value) => setField<double>('square_meters', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  int? get yearStructural => getField<int>('year_structural');
  set yearStructural(int? value) => setField<int>('year_structural', value);

  double? get hoaFee => getField<double>('hoa_fee');
  set hoaFee(double? value) => setField<double>('hoa_fee', value);

  String? get ber => getField<String>('ber');
  set ber(String? value) => setField<String>('ber', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get taxAssessedValue => getField<double>('tax_assessed_value');
  set taxAssessedValue(double? value) =>
      setField<double>('tax_assessed_value', value);

  double? get annualTaxAmount => getField<double>('annual_tax_amount');
  set annualTaxAmount(double? value) =>
      setField<double>('annual_tax_amount', value);

  bool? get protectedStructure => getField<bool>('protected_structure');
  set protectedStructure(bool? value) =>
      setField<bool>('protected_structure', value);

  String? get specialConditions => getField<String>('special_conditions');
  set specialConditions(String? value) =>
      setField<String>('special_conditions', value);

  bool? get newConstruction => getField<bool>('new_construction');
  set newConstruction(bool? value) => setField<bool>('new_construction', value);

  double? get landArea => getField<double>('land_area');
  set landArea(double? value) => setField<double>('land_area', value);

  double? get livableArea => getField<double>('livable_area');
  set livableArea(double? value) => setField<double>('livable_area', value);

  String? get asignedUser => getField<String>('asigned_user');
  set asignedUser(String? value) => setField<String>('asigned_user', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

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

  List<String> get exteriorFinish => getListField<String>('exterior_finish');
  set exteriorFinish(List<String>? value) =>
      setListField<String>('exterior_finish', value);

  List<String> get view => getListField<String>('view');
  set view(List<String>? value) => setListField<String>('view', value);

  List<String> get parking => getListField<String>('parking');
  set parking(List<String>? value) => setListField<String>('parking', value);

  int? get parkingNumber => getField<int>('parking_number');
  set parkingNumber(int? value) => setField<int>('parking_number', value);

  bool? get accessibility => getField<bool>('accessibility');
  set accessibility(bool? value) => setField<bool>('accessibility', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get salePrice => getField<int>('sale_price');
  set salePrice(int? value) => setField<int>('sale_price', value);

  int? get rentPrice => getField<int>('rent_price');
  set rentPrice(int? value) => setField<int>('rent_price', value);

  String? get rentLeaseTerm => getField<String>('rent_lease_term');
  set rentLeaseTerm(String? value) =>
      setField<String>('rent_lease_term', value);

  DateTime? get rentDateAvailable => getField<DateTime>('rent_date_available');
  set rentDateAvailable(DateTime? value) =>
      setField<DateTime>('rent_date_available', value);

  String? get rentAvailabilityOfFurniture =>
      getField<String>('rent_availability_of_furniture');
  set rentAvailabilityOfFurniture(String? value) =>
      setField<String>('rent_availability_of_furniture', value);

  DateTime? get agreedSaleDate => getField<DateTime>('agreed_sale_date');
  set agreedSaleDate(DateTime? value) =>
      setField<DateTime>('agreed_sale_date', value);

  int? get agreedSalePrice => getField<int>('agreed_sale_price');
  set agreedSalePrice(int? value) => setField<int>('agreed_sale_price', value);

  DateTime? get saleDate => getField<DateTime>('sale_date');
  set saleDate(DateTime? value) => setField<DateTime>('sale_date', value);

  DateTime? get rentalDate => getField<DateTime>('rental_date');
  set rentalDate(DateTime? value) => setField<DateTime>('rental_date', value);

  DateTime? get delistingDate => getField<DateTime>('delisting_date');
  set delistingDate(DateTime? value) =>
      setField<DateTime>('delisting_date', value);

  DateTime? get lastHistoryDate => getField<DateTime>('last_history_date');
  set lastHistoryDate(DateTime? value) =>
      setField<DateTime>('last_history_date', value);

  dynamic? get priceHistoryJson => getField<dynamic>('price_history_json');
  set priceHistoryJson(dynamic? value) =>
      setField<dynamic>('price_history_json', value);
}
