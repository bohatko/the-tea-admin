// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:toastification/toastification.dart';

Future toastNotification(
  BuildContext context,
  String description,
  String notificationType,
  String? title,
  int? showDuration,
  Color? backgroundColor,
  Color? successColor,
  Color? errorColor,
  Color? textColor,
) async {
  // Add your function code here!
  try {
    // Verify context is mounted
    if (!context.mounted) {
      print('Context is not mounted, cannot show notification');
      return;
    }

    // Set default values
    final int duration = showDuration ?? 3000;
    final Color defaultTextColor = textColor ?? Colors.black87;

    // Determine notification type and colors
    ToastificationType toastType;
    Color primaryColor;
    Widget iconWidget;

    switch (notificationType.toLowerCase()) {
      case 'success':
        toastType = ToastificationType.success;
        primaryColor = successColor ?? Colors.green;
        iconWidget = Icon(Icons.check_circle_outline, color: primaryColor);
        break;
      case 'error':
        toastType = ToastificationType.error;
        primaryColor = errorColor ?? Colors.red;
        iconWidget = Icon(Icons.highlight_off, color: primaryColor);
        break;
      default:
        // Fallback to info for any other type
        toastType = ToastificationType.info;
        primaryColor = Colors.blue;
        iconWidget = Icon(Icons.info_outline, color: primaryColor);
        break;
    }

    // Create title widget if provided
    Widget? titleWidget;
    if (title != null && title.isNotEmpty) {
      titleWidget = Text(
        title,
        style: TextStyle(
          color: defaultTextColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          fontFamily: 'Inter',
        ),
      );
    }

    // Create description widget
    final descriptionWidget = Text(
      description,
      style: TextStyle(
        color: defaultTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
    );

    // Show minimal toast notification
    toastification.show(
      context: context,

      // Type and style - minimal style for clean look
      type: toastType,
      style: ToastificationStyle.minimal,

      // Content
      title: titleWidget,
      description: descriptionWidget,
      icon: iconWidget,

      // Positioning - bottom right as requested
      alignment: Alignment.bottomRight,

      // Duration
      autoCloseDuration: Duration(milliseconds: duration),

      // Colors - minimal approach
      primaryColor: primaryColor,
      backgroundColor: backgroundColor ?? Colors.white,
      foregroundColor: defaultTextColor,

      // Minimal padding and margins
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: const EdgeInsets.only(right: 16, bottom: 16),

      // Border radius
      borderRadius: BorderRadius.circular(10),

      // Minimal shadow for subtle depth
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 8,
          offset: const Offset(0, 2),
          spreadRadius: 0,
        ),
      ],

      // Animation - slide from right (as requested)
      animationDuration: const Duration(milliseconds: 400),
      animationBuilder: (context, animation, alignment, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(
              begin: const Offset(1.0, 0.0), // From right
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeOut)),
          ),
          child: child,
        );
      },

      // Show/hide elements - minimal approach
      showIcon: true,
      showProgressBar: true,

      // Close button - on hover only for minimal feel
      closeButton: const ToastCloseButton(
        showType: CloseButtonShowType.onHover,
      ),

      // Interaction settings
      closeOnClick: false,
      pauseOnHover: true,
      dragToClose: true,

      // Callbacks for debugging (optional)
      callbacks: ToastificationCallbacks(
        onTap: (toastItem) => print('Toast ${toastItem.id} tapped'),
        onDismissed: (toastItem) => print('Toast ${toastItem.id} dismissed'),
      ),
    );
  } catch (e) {
    print('Error showing toastification: $e');

    // Fallback to ScaffoldMessenger
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            title != null && title.isNotEmpty
                ? '$title: $description'
                : description,
          ),
          backgroundColor: notificationType.toLowerCase() == 'success'
              ? Colors.green
              : notificationType.toLowerCase() == 'error'
                  ? Colors.red
                  : Colors.blue,
          duration: Duration(milliseconds: showDuration ?? 3000),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(16),
        ),
      );
    } catch (fallbackError) {
      print('Fallback also failed: $fallbackError');
    }
  }
}
