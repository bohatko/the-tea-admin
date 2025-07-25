// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneralDoubleFieldsStruct extends BaseStruct {
  GeneralDoubleFieldsStruct({
    double? squareMeters,
    double? livableArea,
    double? landArea,
    double? hoaFee,
    double? annualTaxAmmount,
    double? taxAssessedValue,
    String? ber,
  })  : _squareMeters = squareMeters,
        _livableArea = livableArea,
        _landArea = landArea,
        _hoaFee = hoaFee,
        _annualTaxAmmount = annualTaxAmmount,
        _taxAssessedValue = taxAssessedValue,
        _ber = ber;

  // "square_meters" field.
  double? _squareMeters;
  double get squareMeters => _squareMeters ?? 0.0;
  set squareMeters(double? val) => _squareMeters = val;

  void incrementSquareMeters(double amount) =>
      squareMeters = squareMeters + amount;

  bool hasSquareMeters() => _squareMeters != null;

  // "livable_area" field.
  double? _livableArea;
  double get livableArea => _livableArea ?? 0.0;
  set livableArea(double? val) => _livableArea = val;

  void incrementLivableArea(double amount) =>
      livableArea = livableArea + amount;

  bool hasLivableArea() => _livableArea != null;

  // "land_area" field.
  double? _landArea;
  double get landArea => _landArea ?? 0.0;
  set landArea(double? val) => _landArea = val;

  void incrementLandArea(double amount) => landArea = landArea + amount;

  bool hasLandArea() => _landArea != null;

  // "hoa_fee" field.
  double? _hoaFee;
  double get hoaFee => _hoaFee ?? 0.0;
  set hoaFee(double? val) => _hoaFee = val;

  void incrementHoaFee(double amount) => hoaFee = hoaFee + amount;

  bool hasHoaFee() => _hoaFee != null;

  // "annual_tax_ammount" field.
  double? _annualTaxAmmount;
  double get annualTaxAmmount => _annualTaxAmmount ?? 0.0;
  set annualTaxAmmount(double? val) => _annualTaxAmmount = val;

  void incrementAnnualTaxAmmount(double amount) =>
      annualTaxAmmount = annualTaxAmmount + amount;

  bool hasAnnualTaxAmmount() => _annualTaxAmmount != null;

  // "tax_assessed_value" field.
  double? _taxAssessedValue;
  double get taxAssessedValue => _taxAssessedValue ?? 0.0;
  set taxAssessedValue(double? val) => _taxAssessedValue = val;

  void incrementTaxAssessedValue(double amount) =>
      taxAssessedValue = taxAssessedValue + amount;

  bool hasTaxAssessedValue() => _taxAssessedValue != null;

  // "ber" field.
  String? _ber;
  String get ber => _ber ?? '';
  set ber(String? val) => _ber = val;

  bool hasBer() => _ber != null;

  static GeneralDoubleFieldsStruct fromMap(Map<String, dynamic> data) =>
      GeneralDoubleFieldsStruct(
        squareMeters: castToType<double>(data['square_meters']),
        livableArea: castToType<double>(data['livable_area']),
        landArea: castToType<double>(data['land_area']),
        hoaFee: castToType<double>(data['hoa_fee']),
        annualTaxAmmount: castToType<double>(data['annual_tax_ammount']),
        taxAssessedValue: castToType<double>(data['tax_assessed_value']),
        ber: data['ber'] as String?,
      );

  static GeneralDoubleFieldsStruct? maybeFromMap(dynamic data) => data is Map
      ? GeneralDoubleFieldsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'square_meters': _squareMeters,
        'livable_area': _livableArea,
        'land_area': _landArea,
        'hoa_fee': _hoaFee,
        'annual_tax_ammount': _annualTaxAmmount,
        'tax_assessed_value': _taxAssessedValue,
        'ber': _ber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'square_meters': serializeParam(
          _squareMeters,
          ParamType.double,
        ),
        'livable_area': serializeParam(
          _livableArea,
          ParamType.double,
        ),
        'land_area': serializeParam(
          _landArea,
          ParamType.double,
        ),
        'hoa_fee': serializeParam(
          _hoaFee,
          ParamType.double,
        ),
        'annual_tax_ammount': serializeParam(
          _annualTaxAmmount,
          ParamType.double,
        ),
        'tax_assessed_value': serializeParam(
          _taxAssessedValue,
          ParamType.double,
        ),
        'ber': serializeParam(
          _ber,
          ParamType.String,
        ),
      }.withoutNulls;

  static GeneralDoubleFieldsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GeneralDoubleFieldsStruct(
        squareMeters: deserializeParam(
          data['square_meters'],
          ParamType.double,
          false,
        ),
        livableArea: deserializeParam(
          data['livable_area'],
          ParamType.double,
          false,
        ),
        landArea: deserializeParam(
          data['land_area'],
          ParamType.double,
          false,
        ),
        hoaFee: deserializeParam(
          data['hoa_fee'],
          ParamType.double,
          false,
        ),
        annualTaxAmmount: deserializeParam(
          data['annual_tax_ammount'],
          ParamType.double,
          false,
        ),
        taxAssessedValue: deserializeParam(
          data['tax_assessed_value'],
          ParamType.double,
          false,
        ),
        ber: deserializeParam(
          data['ber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GeneralDoubleFieldsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeneralDoubleFieldsStruct &&
        squareMeters == other.squareMeters &&
        livableArea == other.livableArea &&
        landArea == other.landArea &&
        hoaFee == other.hoaFee &&
        annualTaxAmmount == other.annualTaxAmmount &&
        taxAssessedValue == other.taxAssessedValue &&
        ber == other.ber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        squareMeters,
        livableArea,
        landArea,
        hoaFee,
        annualTaxAmmount,
        taxAssessedValue,
        ber
      ]);
}

GeneralDoubleFieldsStruct createGeneralDoubleFieldsStruct({
  double? squareMeters,
  double? livableArea,
  double? landArea,
  double? hoaFee,
  double? annualTaxAmmount,
  double? taxAssessedValue,
  String? ber,
}) =>
    GeneralDoubleFieldsStruct(
      squareMeters: squareMeters,
      livableArea: livableArea,
      landArea: landArea,
      hoaFee: hoaFee,
      annualTaxAmmount: annualTaxAmmount,
      taxAssessedValue: taxAssessedValue,
      ber: ber,
    );
