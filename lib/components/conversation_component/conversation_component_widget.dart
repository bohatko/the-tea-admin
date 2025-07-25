import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'conversation_component_model.dart';
export 'conversation_component_model.dart';

class ConversationComponentWidget extends StatefulWidget {
  const ConversationComponentWidget({
    super.key,
    this.avatarUrl,
    this.hasUnreadMessage,
    this.displayName,
    this.lastMessage,
    required this.lastMessageDate,
    required this.activeChat,
    required this.showUnreadMessage,
  });

  final String? avatarUrl;
  final bool? hasUnreadMessage;
  final String? displayName;
  final String? lastMessage;
  final DateTime? lastMessageDate;
  final bool? activeChat;
  final bool? showUnreadMessage;

  @override
  State<ConversationComponentWidget> createState() =>
      _ConversationComponentWidgetState();
}

class _ConversationComponentWidgetState
    extends State<ConversationComponentWidget> {
  late ConversationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConversationComponentModel());

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
      child: Container(
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget!.activeChat! || _model.mouseRegionChatHovered!
                ? FlutterFlowTheme.of(context).primaryBackground
                : FlutterFlowTheme.of(context).secondaryBackground,
            FlutterFlowTheme.of(context).secondaryBackground,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: ClipOval(
                  child: Container(
                    width: 48.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                    ),
                    child: Builder(
                      builder: (context) {
                        if (widget!.avatarUrl != null &&
                            widget!.avatarUrl != '') {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: OctoImage(
                              placeholderBuilder: (_) => SizedBox.expand(
                                child: Image(
                                  image: BlurHashImage(FFAppConstants.blurHash),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              image: NetworkImage(
                                widget!.avatarUrl!,
                              ),
                              width: 48.0,
                              height: 48.0,
                              fit: BoxFit.cover,
                            ),
                          );
                        } else {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.asset(
                              'assets/images/empty_avatar.webp',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            valueOrDefault<String>(
                              widget!.displayName,
                              'User name',
                            ),
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.3,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineSmallIsCustom,
                                ),
                          ),
                        ),
                        Text(
                          dateTimeFormat(
                              "dd.MM, HH:mm", widget!.lastMessageDate),
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineLargeFamily,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                lineHeight: 1.3,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineLargeIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            widget!.lastMessage!,
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineLargeFamily,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.3,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineLargeIsCustom,
                                ),
                          ),
                        ),
                        if (widget!.showUnreadMessage ?? true)
                          Container(
                            width: 10.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                              shape: BoxShape.circle,
                            ),
                          ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionChatHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionChatHovered = false);
      }),
    );
  }
}
