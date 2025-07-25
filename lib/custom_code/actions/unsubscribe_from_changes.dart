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

import 'dart:async';
import 'package:supabase_flutter/supabase_flutter.dart';

Future unsubscribeFromChanges(
  String tableName,
  String channelSuffix,
) async {
  // Add your function code here!
  // Validation
  if (tableName.isEmpty || channelSuffix.isEmpty) {
    print(
        'Error: unsubscribeFromChanges - tableName and channelSuffix cannot be empty.');
    return;
  }

  final supabase = SupaFlow.client;
  final String channelName = 'public:${tableName}:${channelSuffix}';

  print(
      'unsubscribeFromChanges: Attempting to unsubscribe from channel: $channelName');

  try {
    // AGGRESSIVE CLEANUP APPROACH:

    // 1. Get ALL channels and find matching ones
    final allChannels = supabase.getChannels();
    final matchingChannels = allChannels
        .where((ch) => ch.topic == channelName || ch.topic.contains(tableName))
        .toList();

    print(
        'unsubscribeFromChanges: Found ${matchingChannels.length} matching channels');

    // 2. Unsubscribe from ALL matching channels
    for (final channel in matchingChannels) {
      try {
        print('unsubscribeFromChanges: Unsubscribing from ${channel.topic}');
        await channel.unsubscribe();
        supabase.removeChannel(channel);
      } catch (e) {
        print(
            'unsubscribeFromChanges: Error unsubscribing from ${channel.topic}: $e');
      }
    }

    // 3. Also try the direct approach
    final directChannel = supabase.channel(channelName);
    await directChannel.unsubscribe();
    supabase.removeChannel(directChannel);

    // 4. Small delay to ensure cleanup completes
    await Future.delayed(Duration(milliseconds: 100));

    print('unsubscribeFromChanges: Unsubscribe status for $channelName: ok');
  } catch (e) {
    print('unsubscribeFromChanges: Error removing channel $channelName: $e');
    // Nuclear option - remove ALL channels
    try {
      print('unsubscribeFromChanges: NUCLEAR OPTION - removing ALL channels');
      supabase.removeAllChannels();
      await Future.delayed(Duration(milliseconds: 100));
      print('unsubscribeFromChanges: All channels removed');
    } catch (e2) {
      print('unsubscribeFromChanges: Nuclear option also failed: $e2');
    }
  }
}
