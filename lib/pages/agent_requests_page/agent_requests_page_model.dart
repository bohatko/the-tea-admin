import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/confirm_modal/confirm_modal_widget.dart';
import '/components/request_agent_modal/request_agent_modal_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'agent_requests_page_widget.dart' show AgentRequestsPageWidget;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgentRequestsPageModel extends FlutterFlowModel<AgentRequestsPageWidget> {
  ///  Local state fields for this page.

  int offset = 10;

  int pageNumber = 1;

  ///  State fields for stateful widgets in this page.

  // Model for WebNav component.
  late WebNavModel webNavModel;
  // State field(s) for TextFieldSearch widget.
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for StatusDD widget.
  String? statusDDValue;
  FormFieldController<String>? statusDDValueController;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in ContainerRowWrapper widget.
  String? result;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    textFieldSearchFocusNode?.dispose();
    textFieldSearchTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
