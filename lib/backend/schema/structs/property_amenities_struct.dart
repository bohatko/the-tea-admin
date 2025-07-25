// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyAmenitiesStruct extends BaseStruct {
  PropertyAmenitiesStruct({
    String? bedroomsDouble,
    String? bedroomsSingle,
    String? bathroomsFull,
    String? bathroomsHalf,
    String? bathroomsEnsuite,
    List<String>? rooms,
    List<String>? flooring,
    List<String>? heatingCooling,
    List<String>? appliancesIncluded,
    List<String>? features,
    List<String>? laundry,
    List<String>? exteriorFinish,
    List<String>? view,
    List<String>? parking,
    bool? accessibility,
    int? parkingNumber,
  })  : _bedroomsDouble = bedroomsDouble,
        _bedroomsSingle = bedroomsSingle,
        _bathroomsFull = bathroomsFull,
        _bathroomsHalf = bathroomsHalf,
        _bathroomsEnsuite = bathroomsEnsuite,
        _rooms = rooms,
        _flooring = flooring,
        _heatingCooling = heatingCooling,
        _appliancesIncluded = appliancesIncluded,
        _features = features,
        _laundry = laundry,
        _exteriorFinish = exteriorFinish,
        _view = view,
        _parking = parking,
        _accessibility = accessibility,
        _parkingNumber = parkingNumber;

  // "bedrooms_double" field.
  String? _bedroomsDouble;
  String get bedroomsDouble => _bedroomsDouble ?? '';
  set bedroomsDouble(String? val) => _bedroomsDouble = val;

  bool hasBedroomsDouble() => _bedroomsDouble != null;

  // "bedrooms_single" field.
  String? _bedroomsSingle;
  String get bedroomsSingle => _bedroomsSingle ?? '';
  set bedroomsSingle(String? val) => _bedroomsSingle = val;

  bool hasBedroomsSingle() => _bedroomsSingle != null;

  // "bathrooms_full" field.
  String? _bathroomsFull;
  String get bathroomsFull => _bathroomsFull ?? '';
  set bathroomsFull(String? val) => _bathroomsFull = val;

  bool hasBathroomsFull() => _bathroomsFull != null;

  // "bathrooms_half" field.
  String? _bathroomsHalf;
  String get bathroomsHalf => _bathroomsHalf ?? '';
  set bathroomsHalf(String? val) => _bathroomsHalf = val;

  bool hasBathroomsHalf() => _bathroomsHalf != null;

  // "bathrooms_ensuite" field.
  String? _bathroomsEnsuite;
  String get bathroomsEnsuite => _bathroomsEnsuite ?? '';
  set bathroomsEnsuite(String? val) => _bathroomsEnsuite = val;

  bool hasBathroomsEnsuite() => _bathroomsEnsuite != null;

  // "rooms" field.
  List<String>? _rooms;
  List<String> get rooms => _rooms ?? const [];
  set rooms(List<String>? val) => _rooms = val;

  void updateRooms(Function(List<String>) updateFn) {
    updateFn(_rooms ??= []);
  }

  bool hasRooms() => _rooms != null;

  // "flooring" field.
  List<String>? _flooring;
  List<String> get flooring => _flooring ?? const [];
  set flooring(List<String>? val) => _flooring = val;

  void updateFlooring(Function(List<String>) updateFn) {
    updateFn(_flooring ??= []);
  }

  bool hasFlooring() => _flooring != null;

  // "heating_cooling" field.
  List<String>? _heatingCooling;
  List<String> get heatingCooling => _heatingCooling ?? const [];
  set heatingCooling(List<String>? val) => _heatingCooling = val;

  void updateHeatingCooling(Function(List<String>) updateFn) {
    updateFn(_heatingCooling ??= []);
  }

  bool hasHeatingCooling() => _heatingCooling != null;

  // "appliances_included" field.
  List<String>? _appliancesIncluded;
  List<String> get appliancesIncluded => _appliancesIncluded ?? const [];
  set appliancesIncluded(List<String>? val) => _appliancesIncluded = val;

  void updateAppliancesIncluded(Function(List<String>) updateFn) {
    updateFn(_appliancesIncluded ??= []);
  }

  bool hasAppliancesIncluded() => _appliancesIncluded != null;

  // "features" field.
  List<String>? _features;
  List<String> get features => _features ?? const [];
  set features(List<String>? val) => _features = val;

  void updateFeatures(Function(List<String>) updateFn) {
    updateFn(_features ??= []);
  }

  bool hasFeatures() => _features != null;

  // "laundry" field.
  List<String>? _laundry;
  List<String> get laundry => _laundry ?? const [];
  set laundry(List<String>? val) => _laundry = val;

  void updateLaundry(Function(List<String>) updateFn) {
    updateFn(_laundry ??= []);
  }

  bool hasLaundry() => _laundry != null;

  // "exterior_finish" field.
  List<String>? _exteriorFinish;
  List<String> get exteriorFinish => _exteriorFinish ?? const [];
  set exteriorFinish(List<String>? val) => _exteriorFinish = val;

  void updateExteriorFinish(Function(List<String>) updateFn) {
    updateFn(_exteriorFinish ??= []);
  }

  bool hasExteriorFinish() => _exteriorFinish != null;

  // "view" field.
  List<String>? _view;
  List<String> get view => _view ?? const [];
  set view(List<String>? val) => _view = val;

  void updateView(Function(List<String>) updateFn) {
    updateFn(_view ??= []);
  }

  bool hasView() => _view != null;

  // "parking" field.
  List<String>? _parking;
  List<String> get parking => _parking ?? const [];
  set parking(List<String>? val) => _parking = val;

  void updateParking(Function(List<String>) updateFn) {
    updateFn(_parking ??= []);
  }

  bool hasParking() => _parking != null;

  // "accessibility" field.
  bool? _accessibility;
  bool get accessibility => _accessibility ?? false;
  set accessibility(bool? val) => _accessibility = val;

  bool hasAccessibility() => _accessibility != null;

  // "parking_number" field.
  int? _parkingNumber;
  int get parkingNumber => _parkingNumber ?? 0;
  set parkingNumber(int? val) => _parkingNumber = val;

  void incrementParkingNumber(int amount) =>
      parkingNumber = parkingNumber + amount;

  bool hasParkingNumber() => _parkingNumber != null;

  static PropertyAmenitiesStruct fromMap(Map<String, dynamic> data) =>
      PropertyAmenitiesStruct(
        bedroomsDouble: data['bedrooms_double'] as String?,
        bedroomsSingle: data['bedrooms_single'] as String?,
        bathroomsFull: data['bathrooms_full'] as String?,
        bathroomsHalf: data['bathrooms_half'] as String?,
        bathroomsEnsuite: data['bathrooms_ensuite'] as String?,
        rooms: getDataList(data['rooms']),
        flooring: getDataList(data['flooring']),
        heatingCooling: getDataList(data['heating_cooling']),
        appliancesIncluded: getDataList(data['appliances_included']),
        features: getDataList(data['features']),
        laundry: getDataList(data['laundry']),
        exteriorFinish: getDataList(data['exterior_finish']),
        view: getDataList(data['view']),
        parking: getDataList(data['parking']),
        accessibility: data['accessibility'] as bool?,
        parkingNumber: castToType<int>(data['parking_number']),
      );

  static PropertyAmenitiesStruct? maybeFromMap(dynamic data) => data is Map
      ? PropertyAmenitiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'bedrooms_double': _bedroomsDouble,
        'bedrooms_single': _bedroomsSingle,
        'bathrooms_full': _bathroomsFull,
        'bathrooms_half': _bathroomsHalf,
        'bathrooms_ensuite': _bathroomsEnsuite,
        'rooms': _rooms,
        'flooring': _flooring,
        'heating_cooling': _heatingCooling,
        'appliances_included': _appliancesIncluded,
        'features': _features,
        'laundry': _laundry,
        'exterior_finish': _exteriorFinish,
        'view': _view,
        'parking': _parking,
        'accessibility': _accessibility,
        'parking_number': _parkingNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'bedrooms_double': serializeParam(
          _bedroomsDouble,
          ParamType.String,
        ),
        'bedrooms_single': serializeParam(
          _bedroomsSingle,
          ParamType.String,
        ),
        'bathrooms_full': serializeParam(
          _bathroomsFull,
          ParamType.String,
        ),
        'bathrooms_half': serializeParam(
          _bathroomsHalf,
          ParamType.String,
        ),
        'bathrooms_ensuite': serializeParam(
          _bathroomsEnsuite,
          ParamType.String,
        ),
        'rooms': serializeParam(
          _rooms,
          ParamType.String,
          isList: true,
        ),
        'flooring': serializeParam(
          _flooring,
          ParamType.String,
          isList: true,
        ),
        'heating_cooling': serializeParam(
          _heatingCooling,
          ParamType.String,
          isList: true,
        ),
        'appliances_included': serializeParam(
          _appliancesIncluded,
          ParamType.String,
          isList: true,
        ),
        'features': serializeParam(
          _features,
          ParamType.String,
          isList: true,
        ),
        'laundry': serializeParam(
          _laundry,
          ParamType.String,
          isList: true,
        ),
        'exterior_finish': serializeParam(
          _exteriorFinish,
          ParamType.String,
          isList: true,
        ),
        'view': serializeParam(
          _view,
          ParamType.String,
          isList: true,
        ),
        'parking': serializeParam(
          _parking,
          ParamType.String,
          isList: true,
        ),
        'accessibility': serializeParam(
          _accessibility,
          ParamType.bool,
        ),
        'parking_number': serializeParam(
          _parkingNumber,
          ParamType.int,
        ),
      }.withoutNulls;

  static PropertyAmenitiesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PropertyAmenitiesStruct(
        bedroomsDouble: deserializeParam(
          data['bedrooms_double'],
          ParamType.String,
          false,
        ),
        bedroomsSingle: deserializeParam(
          data['bedrooms_single'],
          ParamType.String,
          false,
        ),
        bathroomsFull: deserializeParam(
          data['bathrooms_full'],
          ParamType.String,
          false,
        ),
        bathroomsHalf: deserializeParam(
          data['bathrooms_half'],
          ParamType.String,
          false,
        ),
        bathroomsEnsuite: deserializeParam(
          data['bathrooms_ensuite'],
          ParamType.String,
          false,
        ),
        rooms: deserializeParam<String>(
          data['rooms'],
          ParamType.String,
          true,
        ),
        flooring: deserializeParam<String>(
          data['flooring'],
          ParamType.String,
          true,
        ),
        heatingCooling: deserializeParam<String>(
          data['heating_cooling'],
          ParamType.String,
          true,
        ),
        appliancesIncluded: deserializeParam<String>(
          data['appliances_included'],
          ParamType.String,
          true,
        ),
        features: deserializeParam<String>(
          data['features'],
          ParamType.String,
          true,
        ),
        laundry: deserializeParam<String>(
          data['laundry'],
          ParamType.String,
          true,
        ),
        exteriorFinish: deserializeParam<String>(
          data['exterior_finish'],
          ParamType.String,
          true,
        ),
        view: deserializeParam<String>(
          data['view'],
          ParamType.String,
          true,
        ),
        parking: deserializeParam<String>(
          data['parking'],
          ParamType.String,
          true,
        ),
        accessibility: deserializeParam(
          data['accessibility'],
          ParamType.bool,
          false,
        ),
        parkingNumber: deserializeParam(
          data['parking_number'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PropertyAmenitiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PropertyAmenitiesStruct &&
        bedroomsDouble == other.bedroomsDouble &&
        bedroomsSingle == other.bedroomsSingle &&
        bathroomsFull == other.bathroomsFull &&
        bathroomsHalf == other.bathroomsHalf &&
        bathroomsEnsuite == other.bathroomsEnsuite &&
        listEquality.equals(rooms, other.rooms) &&
        listEquality.equals(flooring, other.flooring) &&
        listEquality.equals(heatingCooling, other.heatingCooling) &&
        listEquality.equals(appliancesIncluded, other.appliancesIncluded) &&
        listEquality.equals(features, other.features) &&
        listEquality.equals(laundry, other.laundry) &&
        listEquality.equals(exteriorFinish, other.exteriorFinish) &&
        listEquality.equals(view, other.view) &&
        listEquality.equals(parking, other.parking) &&
        accessibility == other.accessibility &&
        parkingNumber == other.parkingNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        bedroomsDouble,
        bedroomsSingle,
        bathroomsFull,
        bathroomsHalf,
        bathroomsEnsuite,
        rooms,
        flooring,
        heatingCooling,
        appliancesIncluded,
        features,
        laundry,
        exteriorFinish,
        view,
        parking,
        accessibility,
        parkingNumber
      ]);
}

PropertyAmenitiesStruct createPropertyAmenitiesStruct({
  String? bedroomsDouble,
  String? bedroomsSingle,
  String? bathroomsFull,
  String? bathroomsHalf,
  String? bathroomsEnsuite,
  bool? accessibility,
  int? parkingNumber,
}) =>
    PropertyAmenitiesStruct(
      bedroomsDouble: bedroomsDouble,
      bedroomsSingle: bedroomsSingle,
      bathroomsFull: bathroomsFull,
      bathroomsHalf: bathroomsHalf,
      bathroomsEnsuite: bathroomsEnsuite,
      accessibility: accessibility,
      parkingNumber: parkingNumber,
    );
