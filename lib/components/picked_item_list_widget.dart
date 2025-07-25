import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'picked_item_list_model.dart';
export 'picked_item_list_model.dart';

class PickedItemListWidget extends StatefulWidget {
  const PickedItemListWidget({
    super.key,
    required this.list,
    required this.removeAction,
  });

  final List<String>? list;
  final Future Function()? removeAction;

  @override
  State<PickedItemListWidget> createState() => _PickedItemListWidgetState();
}

class _PickedItemListWidgetState extends State<PickedItemListWidget> {
  late PickedItemListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PickedItemListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final items = widget!.list!.toList();

        return Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: List.generate(items.length, (itemsIndex) {
            final itemsItem = items[itemsIndex];
            return Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      itemsItem,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineSmallIsCustom,
                              ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().removeItem = itemsItem;
                        safeSetState(() {});
                        await widget.removeAction?.call();
                      },
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        );
      },
    );
  }
}
