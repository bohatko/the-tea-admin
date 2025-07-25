import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shimmers/shimmer_conversation/shimmer_conversation_widget.dart';
import 'dart:ui';
import 'shimmer_conversations_list_widget.dart'
    show ShimmerConversationsListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShimmerConversationsListModel
    extends FlutterFlowModel<ShimmerConversationsListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ShimmerConversation component.
  late ShimmerConversationModel shimmerConversationModel1;
  // Model for ShimmerConversation component.
  late ShimmerConversationModel shimmerConversationModel2;
  // Model for ShimmerConversation component.
  late ShimmerConversationModel shimmerConversationModel3;

  @override
  void initState(BuildContext context) {
    shimmerConversationModel1 =
        createModel(context, () => ShimmerConversationModel());
    shimmerConversationModel2 =
        createModel(context, () => ShimmerConversationModel());
    shimmerConversationModel3 =
        createModel(context, () => ShimmerConversationModel());
  }

  @override
  void dispose() {
    shimmerConversationModel1.dispose();
    shimmerConversationModel2.dispose();
    shimmerConversationModel3.dispose();
  }
}
