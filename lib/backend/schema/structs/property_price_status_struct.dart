// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyPriceStatusStruct extends BaseStruct {
  PropertyPriceStatusStruct({
    String? status,
    int? salePrice,
    int? monthlyRentalPrice,
    String? rentLeaseTerm,
    DateTime? rentDateAvailable,
    String? rentAvailabilityOfFurniture,
    DateTime? agreedSaleDate,
    int? agreedSalePrice,
    DateTime? saleDate,
    DateTime? rentalDate,
    DateTime? delistingDate,
  })  : _status = status,
        _salePrice = salePrice,
        _monthlyRentalPrice = monthlyRentalPrice,
        _rentLeaseTerm = rentLeaseTerm,
        _rentDateAvailable = rentDateAvailable,
        _rentAvailabilityOfFurniture = rentAvailabilityOfFurniture,
        _agreedSaleDate = agreedSaleDate,
        _agreedSalePrice = agreedSalePrice,
        _saleDate = saleDate,
        _rentalDate = rentalDate,
        _delistingDate = delistingDate;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "sale_price" field.
  int? _salePrice;
  int get salePrice => _salePrice ?? 0;
  set salePrice(int? val) => _salePrice = val;

  void incrementSalePrice(int amount) => salePrice = salePrice + amount;

  bool hasSalePrice() => _salePrice != null;

  // "monthly_rental_price" field.
  int? _monthlyRentalPrice;
  int get monthlyRentalPrice => _monthlyRentalPrice ?? 0;
  set monthlyRentalPrice(int? val) => _monthlyRentalPrice = val;

  void incrementMonthlyRentalPrice(int amount) =>
      monthlyRentalPrice = monthlyRentalPrice + amount;

  bool hasMonthlyRentalPrice() => _monthlyRentalPrice != null;

  // "rent_lease_term" field.
  String? _rentLeaseTerm;
  String get rentLeaseTerm => _rentLeaseTerm ?? '';
  set rentLeaseTerm(String? val) => _rentLeaseTerm = val;

  bool hasRentLeaseTerm() => _rentLeaseTerm != null;

  // "rent_date_available" field.
  DateTime? _rentDateAvailable;
  DateTime? get rentDateAvailable => _rentDateAvailable;
  set rentDateAvailable(DateTime? val) => _rentDateAvailable = val;

  bool hasRentDateAvailable() => _rentDateAvailable != null;

  // "rent_availability_of_furniture" field.
  String? _rentAvailabilityOfFurniture;
  String get rentAvailabilityOfFurniture => _rentAvailabilityOfFurniture ?? '';
  set rentAvailabilityOfFurniture(String? val) =>
      _rentAvailabilityOfFurniture = val;

  bool hasRentAvailabilityOfFurniture() => _rentAvailabilityOfFurniture != null;

  // "agreed_sale_date" field.
  DateTime? _agreedSaleDate;
  DateTime? get agreedSaleDate => _agreedSaleDate;
  set agreedSaleDate(DateTime? val) => _agreedSaleDate = val;

  bool hasAgreedSaleDate() => _agreedSaleDate != null;

  // "agreed_sale_price" field.
  int? _agreedSalePrice;
  int get agreedSalePrice => _agreedSalePrice ?? 0;
  set agreedSalePrice(int? val) => _agreedSalePrice = val;

  void incrementAgreedSalePrice(int amount) =>
      agreedSalePrice = agreedSalePrice + amount;

  bool hasAgreedSalePrice() => _agreedSalePrice != null;

  // "sale_date" field.
  DateTime? _saleDate;
  DateTime? get saleDate => _saleDate;
  set saleDate(DateTime? val) => _saleDate = val;

  bool hasSaleDate() => _saleDate != null;

  // "rental_date" field.
  DateTime? _rentalDate;
  DateTime? get rentalDate => _rentalDate;
  set rentalDate(DateTime? val) => _rentalDate = val;

  bool hasRentalDate() => _rentalDate != null;

  // "delisting_date" field.
  DateTime? _delistingDate;
  DateTime? get delistingDate => _delistingDate;
  set delistingDate(DateTime? val) => _delistingDate = val;

  bool hasDelistingDate() => _delistingDate != null;

  static PropertyPriceStatusStruct fromMap(Map<String, dynamic> data) =>
      PropertyPriceStatusStruct(
        status: data['status'] as String?,
        salePrice: castToType<int>(data['sale_price']),
        monthlyRentalPrice: castToType<int>(data['monthly_rental_price']),
        rentLeaseTerm: data['rent_lease_term'] as String?,
        rentDateAvailable: data['rent_date_available'] as DateTime?,
        rentAvailabilityOfFurniture:
            data['rent_availability_of_furniture'] as String?,
        agreedSaleDate: data['agreed_sale_date'] as DateTime?,
        agreedSalePrice: castToType<int>(data['agreed_sale_price']),
        saleDate: data['sale_date'] as DateTime?,
        rentalDate: data['rental_date'] as DateTime?,
        delistingDate: data['delisting_date'] as DateTime?,
      );

  static PropertyPriceStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? PropertyPriceStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'sale_price': _salePrice,
        'monthly_rental_price': _monthlyRentalPrice,
        'rent_lease_term': _rentLeaseTerm,
        'rent_date_available': _rentDateAvailable,
        'rent_availability_of_furniture': _rentAvailabilityOfFurniture,
        'agreed_sale_date': _agreedSaleDate,
        'agreed_sale_price': _agreedSalePrice,
        'sale_date': _saleDate,
        'rental_date': _rentalDate,
        'delisting_date': _delistingDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'sale_price': serializeParam(
          _salePrice,
          ParamType.int,
        ),
        'monthly_rental_price': serializeParam(
          _monthlyRentalPrice,
          ParamType.int,
        ),
        'rent_lease_term': serializeParam(
          _rentLeaseTerm,
          ParamType.String,
        ),
        'rent_date_available': serializeParam(
          _rentDateAvailable,
          ParamType.DateTime,
        ),
        'rent_availability_of_furniture': serializeParam(
          _rentAvailabilityOfFurniture,
          ParamType.String,
        ),
        'agreed_sale_date': serializeParam(
          _agreedSaleDate,
          ParamType.DateTime,
        ),
        'agreed_sale_price': serializeParam(
          _agreedSalePrice,
          ParamType.int,
        ),
        'sale_date': serializeParam(
          _saleDate,
          ParamType.DateTime,
        ),
        'rental_date': serializeParam(
          _rentalDate,
          ParamType.DateTime,
        ),
        'delisting_date': serializeParam(
          _delistingDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static PropertyPriceStatusStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PropertyPriceStatusStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        salePrice: deserializeParam(
          data['sale_price'],
          ParamType.int,
          false,
        ),
        monthlyRentalPrice: deserializeParam(
          data['monthly_rental_price'],
          ParamType.int,
          false,
        ),
        rentLeaseTerm: deserializeParam(
          data['rent_lease_term'],
          ParamType.String,
          false,
        ),
        rentDateAvailable: deserializeParam(
          data['rent_date_available'],
          ParamType.DateTime,
          false,
        ),
        rentAvailabilityOfFurniture: deserializeParam(
          data['rent_availability_of_furniture'],
          ParamType.String,
          false,
        ),
        agreedSaleDate: deserializeParam(
          data['agreed_sale_date'],
          ParamType.DateTime,
          false,
        ),
        agreedSalePrice: deserializeParam(
          data['agreed_sale_price'],
          ParamType.int,
          false,
        ),
        saleDate: deserializeParam(
          data['sale_date'],
          ParamType.DateTime,
          false,
        ),
        rentalDate: deserializeParam(
          data['rental_date'],
          ParamType.DateTime,
          false,
        ),
        delistingDate: deserializeParam(
          data['delisting_date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'PropertyPriceStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertyPriceStatusStruct &&
        status == other.status &&
        salePrice == other.salePrice &&
        monthlyRentalPrice == other.monthlyRentalPrice &&
        rentLeaseTerm == other.rentLeaseTerm &&
        rentDateAvailable == other.rentDateAvailable &&
        rentAvailabilityOfFurniture == other.rentAvailabilityOfFurniture &&
        agreedSaleDate == other.agreedSaleDate &&
        agreedSalePrice == other.agreedSalePrice &&
        saleDate == other.saleDate &&
        rentalDate == other.rentalDate &&
        delistingDate == other.delistingDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        status,
        salePrice,
        monthlyRentalPrice,
        rentLeaseTerm,
        rentDateAvailable,
        rentAvailabilityOfFurniture,
        agreedSaleDate,
        agreedSalePrice,
        saleDate,
        rentalDate,
        delistingDate
      ]);
}

PropertyPriceStatusStruct createPropertyPriceStatusStruct({
  String? status,
  int? salePrice,
  int? monthlyRentalPrice,
  String? rentLeaseTerm,
  DateTime? rentDateAvailable,
  String? rentAvailabilityOfFurniture,
  DateTime? agreedSaleDate,
  int? agreedSalePrice,
  DateTime? saleDate,
  DateTime? rentalDate,
  DateTime? delistingDate,
}) =>
    PropertyPriceStatusStruct(
      status: status,
      salePrice: salePrice,
      monthlyRentalPrice: monthlyRentalPrice,
      rentLeaseTerm: rentLeaseTerm,
      rentDateAvailable: rentDateAvailable,
      rentAvailabilityOfFurniture: rentAvailabilityOfFurniture,
      agreedSaleDate: agreedSaleDate,
      agreedSalePrice: agreedSalePrice,
      saleDate: saleDate,
      rentalDate: rentalDate,
      delistingDate: delistingDate,
    );
