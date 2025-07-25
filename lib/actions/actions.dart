import '/backend/api_requests/api_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future unsubscribeFromConversations(BuildContext context) async {
  if (FFAppState().isSubscribed) {
    await actions.unsubscribeFromChanges(
      'messages',
      'messages',
    );
    await actions.unsubscribeFromChanges(
      'conversations',
      'conversations_list',
    );
    FFAppState().isSubscribed = false;
  }
}
