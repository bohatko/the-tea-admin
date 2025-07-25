import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_item_model.dart';
export 'menu_item_model.dart';

class MenuItemWidget extends StatefulWidget {
  const MenuItemWidget({
    super.key,
    required this.title,
    required this.isActive,
    required this.navigateAction,
    required this.activeIcon,
    required this.inactiveIcon,
  });

  final String? title;
  final bool? isActive;
  final Future Function()? navigateAction;
  final Widget? activeIcon;
  final Widget? inactiveIcon;

  @override
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  late MenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            unawaited(
              () async {
                await widget.navigateAction?.call();
              }(),
            );
          },
          child: Container(
            width: double.infinity,
            height: 48.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                widget!.isActive! || _model.mouseRegionHovered!
                    ? FlutterFlowTheme.of(context).primaryBackground
                    : Colors.transparent,
                Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: valueOrDefault<Color>(
                  widget!.isActive! || _model.mouseRegionHovered!
                      ? FlutterFlowTheme.of(context).alternate
                      : Colors.transparent,
                  Colors.transparent,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Builder(
                        builder: (context) {
                          if (widget!.isActive ?? false) {
                            return widget!.activeIcon!;
                          } else {
                            return widget!.inactiveIcon!;
                          }
                        },
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget!.title,
                          'Menu item',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: valueOrDefault<Color>(
                                widget!.isActive!
                                    ? FlutterFlowTheme.of(context).primaryText
                                    : FlutterFlowTheme.of(context)
                                        .secondaryText,
                                FlutterFlowTheme.of(context).secondaryText,
                              ),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
