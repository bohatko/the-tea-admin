import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/empty_list_widget_widget.dart';
import '/components/picked_item_list_widget.dart';
import '/components/price_history_modal/price_history_modal_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'edit_property_page_widget.dart' show EditPropertyPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditPropertyPageModel extends FlutterFlowModel<EditPropertyPageWidget> {
  ///  Local state fields for this page.

  PropertyAmenitiesStruct? amenities;
  void updateAmenitiesStruct(Function(PropertyAmenitiesStruct) updateFn) {
    updateFn(amenities ??= PropertyAmenitiesStruct());
  }

  PropertyPriceStatusStruct? priceStatus;
  void updatePriceStatusStruct(Function(PropertyPriceStatusStruct) updateFn) {
    updateFn(priceStatus ??= PropertyPriceStatusStruct());
  }

  List<String> photos = [];
  void addToPhotos(String item) => photos.add(item);
  void removeFromPhotos(String item) => photos.remove(item);
  void removeAtIndexFromPhotos(int index) => photos.removeAt(index);
  void insertAtIndexInPhotos(int index, String item) =>
      photos.insert(index, item);
  void updatePhotosAtIndex(int index, Function(String) updateFn) =>
      photos[index] = updateFn(photos[index]);

  List<String> deletedPhoto = [];
  void addToDeletedPhoto(String item) => deletedPhoto.add(item);
  void removeFromDeletedPhoto(String item) => deletedPhoto.remove(item);
  void removeAtIndexFromDeletedPhoto(int index) => deletedPhoto.removeAt(index);
  void insertAtIndexInDeletedPhoto(int index, String item) =>
      deletedPhoto.insert(index, item);
  void updateDeletedPhotoAtIndex(int index, Function(String) updateFn) =>
      deletedPhoto[index] = updateFn(deletedPhoto[index]);

  int mainPhotoIndex = 0;

  String? floorplan;

  int loopPhotoIndex = 0;

  GeneralDoubleFieldsStruct? generalDoubleValues;
  void updateGeneralDoubleValuesStruct(
      Function(GeneralDoubleFieldsStruct) updateFn) {
    updateFn(generalDoubleValues ??= GeneralDoubleFieldsStruct());
  }

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for UserEmail widget.
  FocusNode? userEmailFocusNode;
  TextEditingController? userEmailTextController;
  String? Function(BuildContext, String?)? userEmailTextControllerValidator;
  bool isDataUploading_uploadDataSct = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataSct = [];
  List<String> uploadedFileUrls_uploadDataSct = [];

  bool isDataUploading_floorplan = false;
  FFUploadedFile uploadedLocalFile_floorplan =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_floorplan = '';

  // State field(s) for PropertyType widget.
  String? propertyTypeValue;
  FormFieldController<String>? propertyTypeValueController;
  // State field(s) for Bedrooms widget.
  String? bedroomsValue;
  FormFieldController<String>? bedroomsValueController;
  // State field(s) for Bathrooms widget.
  String? bathroomsValue;
  FormFieldController<String>? bathroomsValueController;
  // State field(s) for Square widget.
  FocusNode? squareFocusNode;
  TextEditingController? squareTextController;
  String? Function(BuildContext, String?)? squareTextControllerValidator;
  // State field(s) for YearBulit widget.
  FocusNode? yearBulitFocusNode;
  TextEditingController? yearBulitTextController;
  String? Function(BuildContext, String?)? yearBulitTextControllerValidator;
  // State field(s) for YearStructural widget.
  FocusNode? yearStructuralFocusNode;
  TextEditingController? yearStructuralTextController;
  String? Function(BuildContext, String?)?
      yearStructuralTextControllerValidator;
  // State field(s) for SpecialConditions widget.
  String? specialConditionsValue;
  FormFieldController<String>? specialConditionsValueController;
  // State field(s) for Livablearea widget.
  FocusNode? livableareaFocusNode;
  TextEditingController? livableareaTextController;
  String? Function(BuildContext, String?)? livableareaTextControllerValidator;
  // State field(s) for Landarea widget.
  FocusNode? landareaFocusNode;
  TextEditingController? landareaTextController;
  String? Function(BuildContext, String?)? landareaTextControllerValidator;
  // State field(s) for SwitchProtected widget.
  bool? switchProtectedValue;
  // State field(s) for NewConstructionSitch widget.
  bool? newConstructionSitchValue;
  // State field(s) for AnnualTaxAmount widget.
  FocusNode? annualTaxAmountFocusNode;
  TextEditingController? annualTaxAmountTextController;
  String? Function(BuildContext, String?)?
      annualTaxAmountTextControllerValidator;
  // State field(s) for TaxAssessedValue widget.
  FocusNode? taxAssessedValueFocusNode;
  TextEditingController? taxAssessedValueTextController;
  String? Function(BuildContext, String?)?
      taxAssessedValueTextControllerValidator;
  // State field(s) for HoaFee widget.
  FocusNode? hoaFeeFocusNode;
  TextEditingController? hoaFeeTextController;
  String? Function(BuildContext, String?)? hoaFeeTextControllerValidator;
  // State field(s) for Ber widget.
  FocusNode? berFocusNode;
  TextEditingController? berTextController;
  String? Function(BuildContext, String?)? berTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for BedroomsDoubleNumber widget.
  String? bedroomsDoubleNumberValue;
  FormFieldController<String>? bedroomsDoubleNumberValueController;
  // State field(s) for BedroomsSingleNumber widget.
  String? bedroomsSingleNumberValue;
  FormFieldController<String>? bedroomsSingleNumberValueController;
  // State field(s) for BathroomFullNumber widget.
  String? bathroomFullNumberValue;
  FormFieldController<String>? bathroomFullNumberValueController;
  // State field(s) for BathroomHalfNumber widget.
  String? bathroomHalfNumberValue;
  FormFieldController<String>? bathroomHalfNumberValueController;
  // State field(s) for EnsuiteNumber widget.
  String? ensuiteNumberValue;
  FormFieldController<String>? ensuiteNumberValueController;
  // State field(s) for Rooms widget.
  String? roomsValue;
  FormFieldController<String>? roomsValueController;
  // Model for PickedItemList component.
  late PickedItemListModel pickedItemListModel1;
  // State field(s) for CheckboxCarpet widget.
  bool? checkboxCarpetValue;
  // State field(s) for CheckboxHardwood widget.
  bool? checkboxHardwoodValue;
  // State field(s) for CheckboxLaminate widget.
  bool? checkboxLaminateValue;
  // State field(s) for CheckboxTile widget.
  bool? checkboxTileValue;
  // State field(s) for CheckboxWood widget.
  bool? checkboxWoodValue;
  // State field(s) for HeatingCooling widget.
  String? heatingCoolingValue;
  FormFieldController<String>? heatingCoolingValueController;
  // Model for PickedItemList component.
  late PickedItemListModel pickedItemListModel2;
  // State field(s) for AppliancesIncluded widget.
  String? appliancesIncludedValue;
  FormFieldController<String>? appliancesIncludedValueController;
  // Model for PickedItemList component.
  late PickedItemListModel pickedItemListModel3;
  // State field(s) for Features widget.
  String? featuresValue;
  FormFieldController<String>? featuresValueController;
  // Model for PickedItemList component.
  late PickedItemListModel pickedItemListModel4;
  // State field(s) for CheckboxLaundryinResidence widget.
  bool? checkboxLaundryinResidenceValue;
  // State field(s) for CheckboxLaundryinGarage widget.
  bool? checkboxLaundryinGarageValue;
  // State field(s) for CheckboxLaundryOnSitePaid widget.
  bool? checkboxLaundryOnSitePaidValue;
  // State field(s) for CheckboxLaundryOnSiteUnpaid widget.
  bool? checkboxLaundryOnSiteUnpaidValue;
  // State field(s) for ExteriorFinish widget.
  String? exteriorFinishValue;
  FormFieldController<String>? exteriorFinishValueController;
  // Model for PickedItemList component.
  late PickedItemListModel pickedItemListModel5;
  // State field(s) for CheckboxWater widget.
  bool? checkboxWaterValue;
  // State field(s) for CheckboxPartialWater widget.
  bool? checkboxPartialWaterValue;
  // State field(s) for CheckboxCity widget.
  bool? checkboxCityValue;
  // State field(s) for CheckboxWoodedArea widget.
  bool? checkboxWoodedAreaValue;
  // State field(s) for Parking widget.
  String? parkingValue;
  FormFieldController<String>? parkingValueController;
  // State field(s) for ParkingNumber widget.
  FocusNode? parkingNumberFocusNode;
  TextEditingController? parkingNumberTextController;
  String? Function(BuildContext, String?)? parkingNumberTextControllerValidator;
  // Model for PickedItemList component.
  late PickedItemListModel pickedItemListModel6;
  // State field(s) for SwitchAccessibility widget.
  bool? switchAccessibilityValue;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Container widget.
  String? result1;
  Completer<List<PriceHistoryRow>>? requestCompleter;
  // State field(s) for SalePrice widget.
  FocusNode? salePriceFocusNode;
  TextEditingController? salePriceTextController;
  String? Function(BuildContext, String?)? salePriceTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for RentPrice widget.
  FocusNode? rentPriceFocusNode;
  TextEditingController? rentPriceTextController;
  String? Function(BuildContext, String?)? rentPriceTextControllerValidator;
  // State field(s) for LeaseTerm widget.
  String? leaseTermValue;
  FormFieldController<String>? leaseTermValueController;
  DateTime? datePicked2;
  // State field(s) for AvailabilityOfFurniture widget.
  String? availabilityOfFurnitureValue;
  FormFieldController<String>? availabilityOfFurnitureValueController;
  DateTime? datePicked3;
  // State field(s) for SalePriceForSold widget.
  FocusNode? salePriceForSoldFocusNode;
  TextEditingController? salePriceForSoldTextController;
  String? Function(BuildContext, String?)?
      salePriceForSoldTextControllerValidator;
  DateTime? datePicked4;
  DateTime? datePicked5;
  // State field(s) for RentalPrice widget.
  FocusNode? rentalPriceFocusNode;
  TextEditingController? rentalPriceTextController;
  String? Function(BuildContext, String?)? rentalPriceTextControllerValidator;
  // Stores action output result for [Custom Action - checkPropertiesInLocation] action in ButtonSave widget.
  bool? locationAlreadyUsed1;
  // Stores action output result for [Backend Call - Query Rows] action in ButtonSave widget.
  List<UsersRow>? users1;
  // Stores action output result for [Backend Call - Query Rows] action in ButtonSave widget.
  List<PropertiesPhotoRow>? currentPhoto1;
  // Stores action output result for [Custom Action - checkPropertiesInLocation] action in ButtonSave widget.
  bool? locationAlreadyUsed;
  // Stores action output result for [Backend Call - Query Rows] action in ButtonSave widget.
  List<UsersRow>? users;
  // Stores action output result for [Backend Call - Query Rows] action in ButtonSave widget.
  List<PropertiesPhotoRow>? currentPhoto;

  @override
  void initState(BuildContext context) {
    pickedItemListModel1 = createModel(context, () => PickedItemListModel());
    pickedItemListModel2 = createModel(context, () => PickedItemListModel());
    pickedItemListModel3 = createModel(context, () => PickedItemListModel());
    pickedItemListModel4 = createModel(context, () => PickedItemListModel());
    pickedItemListModel5 = createModel(context, () => PickedItemListModel());
    pickedItemListModel6 = createModel(context, () => PickedItemListModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    userEmailFocusNode?.dispose();
    userEmailTextController?.dispose();

    squareFocusNode?.dispose();
    squareTextController?.dispose();

    yearBulitFocusNode?.dispose();
    yearBulitTextController?.dispose();

    yearStructuralFocusNode?.dispose();
    yearStructuralTextController?.dispose();

    livableareaFocusNode?.dispose();
    livableareaTextController?.dispose();

    landareaFocusNode?.dispose();
    landareaTextController?.dispose();

    annualTaxAmountFocusNode?.dispose();
    annualTaxAmountTextController?.dispose();

    taxAssessedValueFocusNode?.dispose();
    taxAssessedValueTextController?.dispose();

    hoaFeeFocusNode?.dispose();
    hoaFeeTextController?.dispose();

    berFocusNode?.dispose();
    berTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    pickedItemListModel1.dispose();
    pickedItemListModel2.dispose();
    pickedItemListModel3.dispose();
    pickedItemListModel4.dispose();
    pickedItemListModel5.dispose();
    parkingNumberFocusNode?.dispose();
    parkingNumberTextController?.dispose();

    pickedItemListModel6.dispose();
    salePriceFocusNode?.dispose();
    salePriceTextController?.dispose();

    rentPriceFocusNode?.dispose();
    rentPriceTextController?.dispose();

    salePriceForSoldFocusNode?.dispose();
    salePriceForSoldTextController?.dispose();

    rentalPriceFocusNode?.dispose();
    rentalPriceTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
