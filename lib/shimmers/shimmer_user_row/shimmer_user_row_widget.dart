import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shimmer_user_row_model.dart';
export 'shimmer_user_row_model.dart';

class ShimmerUserRowWidget extends StatefulWidget {
  const ShimmerUserRowWidget({super.key});

  @override
  State<ShimmerUserRowWidget> createState() => _ShimmerUserRowWidgetState();
}

class _ShimmerUserRowWidgetState extends State<ShimmerUserRowWidget>
    with TickerProviderStateMixin {
  late ShimmerUserRowModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimmerUserRowModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: FlutterFlowTheme.of(context).accent3,
            angle: 0.524,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: FlutterFlowTheme.of(context).accent3,
            angle: 0.524,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: FlutterFlowTheme.of(context).accent3,
            angle: 0.524,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: FlutterFlowTheme.of(context).accent3,
            angle: 0.524,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: FlutterFlowTheme.of(context).accent3,
            angle: 0.524,
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: FlutterFlowTheme.of(context).accent3,
            angle: 0.524,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 0.0,
              color: FlutterFlowTheme.of(context).alternate,
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 60.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 200.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation2']!),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 80.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation3']!),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 60.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation4']!),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 60.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation5']!),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 60.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation6']!),
                  ],
                ),
              ),
            ]
                .divide(SizedBox(width: 8.0))
                .addToStart(SizedBox(width: 16.0))
                .addToEnd(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
