import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shimmers/shimmer_message/shimmer_message_widget.dart';
import 'dart:ui';
import 'shimmer_messages_list_widget.dart' show ShimmerMessagesListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShimmerMessagesListModel
    extends FlutterFlowModel<ShimmerMessagesListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for shimmerMessage component.
  late ShimmerMessageModel shimmerMessageModel1;
  // Model for shimmerMessage component.
  late ShimmerMessageModel shimmerMessageModel2;
  // Model for shimmerMessage component.
  late ShimmerMessageModel shimmerMessageModel3;

  @override
  void initState(BuildContext context) {
    shimmerMessageModel1 = createModel(context, () => ShimmerMessageModel());
    shimmerMessageModel2 = createModel(context, () => ShimmerMessageModel());
    shimmerMessageModel3 = createModel(context, () => ShimmerMessageModel());
  }

  @override
  void dispose() {
    shimmerMessageModel1.dispose();
    shimmerMessageModel2.dispose();
    shimmerMessageModel3.dispose();
  }
}
