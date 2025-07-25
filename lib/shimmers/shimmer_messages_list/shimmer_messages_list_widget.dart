import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shimmers/shimmer_message/shimmer_message_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shimmer_messages_list_model.dart';
export 'shimmer_messages_list_model.dart';

class ShimmerMessagesListWidget extends StatefulWidget {
  const ShimmerMessagesListWidget({super.key});

  @override
  State<ShimmerMessagesListWidget> createState() =>
      _ShimmerMessagesListWidgetState();
}

class _ShimmerMessagesListWidgetState extends State<ShimmerMessagesListWidget> {
  late ShimmerMessagesListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimmerMessagesListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        height: 520.0,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            wrapWithModel(
              model: _model.shimmerMessageModel1,
              updateCallback: () => safeSetState(() {}),
              child: ShimmerMessageWidget(),
            ),
            wrapWithModel(
              model: _model.shimmerMessageModel2,
              updateCallback: () => safeSetState(() {}),
              child: ShimmerMessageWidget(),
            ),
            wrapWithModel(
              model: _model.shimmerMessageModel3,
              updateCallback: () => safeSetState(() {}),
              child: ShimmerMessageWidget(),
            ),
          ]
              .divide(SizedBox(height: 16.0))
              .addToStart(SizedBox(height: 16.0))
              .addToEnd(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
