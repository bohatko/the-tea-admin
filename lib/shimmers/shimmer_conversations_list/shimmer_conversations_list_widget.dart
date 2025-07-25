import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shimmers/shimmer_conversation/shimmer_conversation_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shimmer_conversations_list_model.dart';
export 'shimmer_conversations_list_model.dart';

class ShimmerConversationsListWidget extends StatefulWidget {
  const ShimmerConversationsListWidget({super.key});

  @override
  State<ShimmerConversationsListWidget> createState() =>
      _ShimmerConversationsListWidgetState();
}

class _ShimmerConversationsListWidgetState
    extends State<ShimmerConversationsListWidget> {
  late ShimmerConversationsListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimmerConversationsListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          wrapWithModel(
            model: _model.shimmerConversationModel1,
            updateCallback: () => safeSetState(() {}),
            child: ShimmerConversationWidget(),
          ),
          wrapWithModel(
            model: _model.shimmerConversationModel2,
            updateCallback: () => safeSetState(() {}),
            child: ShimmerConversationWidget(),
          ),
          wrapWithModel(
            model: _model.shimmerConversationModel3,
            updateCallback: () => safeSetState(() {}),
            child: ShimmerConversationWidget(),
          ),
        ],
      ),
    );
  }
}
