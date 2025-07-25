import '/backend/supabase/supabase.dart';
import '/components/confirm_modal/confirm_modal_widget.dart';
import '/components/delete_agent_modal/delete_agent_modal_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'edit_user_supabase_page_widget.dart' show EditUserSupabasePageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class EditUserSupabasePageModel
    extends FlutterFlowModel<EditUserSupabasePageWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? tempAvatar;

  ///  State fields for stateful widgets in this page.

  // Model for WebNav component.
  late WebNavModel webNavModel;
  bool isDataUploading_uploadedImageBytes = false;
  FFUploadedFile uploadedLocalFile_uploadedImageBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDownRole widget.
  String? dropDownRoleValue;
  FormFieldController<String>? dropDownRoleValueController;
  // State field(s) for Agency widget.
  FocusNode? agencyFocusNode;
  TextEditingController? agencyTextController;
  String? Function(BuildContext, String?)? agencyTextControllerValidator;
  // State field(s) for LicenseNumber widget.
  FocusNode? licenseNumberFocusNode;
  TextEditingController? licenseNumberTextController;
  String? Function(BuildContext, String?)? licenseNumberTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  bool isDataUploading_uploadedAvatar = false;
  FFUploadedFile uploadedLocalFile_uploadedAvatar =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedAvatar = '';

  // Stores action output result for [Backend Call - Query Rows] action in ButtonSave widget.
  List<BecomeAgentRequestsRow>? requests;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    agencyFocusNode?.dispose();
    agencyTextController?.dispose();

    licenseNumberFocusNode?.dispose();
    licenseNumberTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();
  }
}
