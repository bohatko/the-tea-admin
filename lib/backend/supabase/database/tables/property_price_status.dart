import '../database.dart';

class PropertyPriceStatusTable extends SupabaseTable<PropertyPriceStatusRow> {
  @override
  String get tableName => 'property_price_status';

  @override
  PropertyPriceStatusRow createRow(Map<String, dynamic> data) =>
      PropertyPriceStatusRow(data);
}

class PropertyPriceStatusRow extends SupabaseDataRow {
  PropertyPriceStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyPriceStatusTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

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
}
