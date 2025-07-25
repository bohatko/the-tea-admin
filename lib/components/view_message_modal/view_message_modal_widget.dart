import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_message_modal_model.dart';
export 'view_message_modal_model.dart';

class ViewMessageModalWidget extends StatefulWidget {
  const ViewMessageModalWidget({
    super.key,
    required this.senderName,
    required this.senderEmail,
    required this.messageText,
  });

  final String? senderName;
  final String? senderEmail;
  final String? messageText;

  @override
  State<ViewMessageModalWidget> createState() => _ViewMessageModalWidgetState();
}

class _ViewMessageModalWidgetState extends State<ViewMessageModalWidget> {
  late ViewMessageModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewMessageModalModel());

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          height: 400.0,
          constraints: BoxConstraints(
            maxWidth: 720.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget!.senderName,
                                'name',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.5,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyLargeIsCustom,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget!.senderEmail,
                                'null',
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.3,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleSmallIsCustom,
                                  ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: 100.0,
                          borderWidth: 1.0,
                          buttonSize: 36.0,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          icon: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.messageText,
                        'null',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            lineHeight: 1.25,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
