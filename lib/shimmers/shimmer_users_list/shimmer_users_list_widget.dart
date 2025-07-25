import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shimmers/shimmer_user_row/shimmer_user_row_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shimmer_users_list_model.dart';
export 'shimmer_users_list_model.dart';

class ShimmerUsersListWidget extends StatefulWidget {
  const ShimmerUsersListWidget({super.key});

  @override
  State<ShimmerUsersListWidget> createState() => _ShimmerUsersListWidgetState();
}

class _ShimmerUsersListWidgetState extends State<ShimmerUsersListWidget> {
  late ShimmerUsersListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimmerUsersListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        wrapWithModel(
          model: _model.shimmerUserRowModel1,
          updateCallback: () => safeSetState(() {}),
          child: ShimmerUserRowWidget(),
        ),
        wrapWithModel(
          model: _model.shimmerUserRowModel2,
          updateCallback: () => safeSetState(() {}),
          child: ShimmerUserRowWidget(),
        ),
        wrapWithModel(
          model: _model.shimmerUserRowModel3,
          updateCallback: () => safeSetState(() {}),
          child: ShimmerUserRowWidget(),
        ),
        wrapWithModel(
          model: _model.shimmerUserRowModel4,
          updateCallback: () => safeSetState(() {}),
          child: ShimmerUserRowWidget(),
        ),
      ],
    );
  }
}
