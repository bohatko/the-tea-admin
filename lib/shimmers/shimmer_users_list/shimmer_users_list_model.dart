import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/shimmers/shimmer_user_row/shimmer_user_row_widget.dart';
import 'dart:ui';
import 'shimmer_users_list_widget.dart' show ShimmerUsersListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShimmerUsersListModel extends FlutterFlowModel<ShimmerUsersListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ShimmerUserRow component.
  late ShimmerUserRowModel shimmerUserRowModel1;
  // Model for ShimmerUserRow component.
  late ShimmerUserRowModel shimmerUserRowModel2;
  // Model for ShimmerUserRow component.
  late ShimmerUserRowModel shimmerUserRowModel3;
  // Model for ShimmerUserRow component.
  late ShimmerUserRowModel shimmerUserRowModel4;

  @override
  void initState(BuildContext context) {
    shimmerUserRowModel1 = createModel(context, () => ShimmerUserRowModel());
    shimmerUserRowModel2 = createModel(context, () => ShimmerUserRowModel());
    shimmerUserRowModel3 = createModel(context, () => ShimmerUserRowModel());
    shimmerUserRowModel4 = createModel(context, () => ShimmerUserRowModel());
  }

  @override
  void dispose() {
    shimmerUserRowModel1.dispose();
    shimmerUserRowModel2.dispose();
    shimmerUserRowModel3.dispose();
    shimmerUserRowModel4.dispose();
  }
}
