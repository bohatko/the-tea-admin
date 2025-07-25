import '/backend/supabase/supabase.dart';
import '/components/confirm_modal/confirm_modal_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'price_history_modal_widget.dart' show PriceHistoryModalWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PriceHistoryModalModel extends FlutterFlowModel<PriceHistoryModalWidget> {
  ///  Local state fields for this component.

  DateTime? pickedDate;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for Source widget.
  FocusNode? sourceFocusNode;
  TextEditingController? sourceTextController;
  String? Function(BuildContext, String?)? sourceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    sourceFocusNode?.dispose();
    sourceTextController?.dispose();
  }
}
