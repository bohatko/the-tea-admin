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

/// Subscribes to real-time updates for the specified Supabase table.
///
/// Calls reloadAction when any change is received (INSERT, UPDATE, DELETE).

Future subscribeToChanges(
  String tableName,
  String channelSuffix,
  Future Function()? reloadAction,
  String? filter,
) async {
  // Validation
  if (tableName.isEmpty || channelSuffix.isEmpty) {
    print(
        'Error: subscribeToChanges - tableName and channelSuffix cannot be empty.');
    return;
  }

  final supabase = SupaFlow.client;
  final String channelName = 'public:${tableName}:${channelSuffix}';

  try {
    await supabase.removeChannel(supabase.channel(channelName));
    print(
        'subscribeToChanges: Removed existing channel (if any): $channelName');
  } catch (e) {
    print(
        'subscribeToChanges: Info - Error removing potentially existing channel $channelName (might be normal if first time): $e');
  }

  final RealtimeChannel channel = supabase.channel(channelName);

  print(
      'subscribeToChanges: Subscribing to channel: $channelName for all changes${filter != null ? ' with filter: $filter' : ''}');

  try {
    // Parse filter string into PostgresChangeFilter object
    PostgresChangeFilter? postgresFilter;
    if (filter != null && filter.isNotEmpty) {
      // Parse string format "column=eq.value"
      final parts = filter.split('=');
      if (parts.length >= 3) {
        final column = parts[0];
        final operator = parts[1];
        final value =
            parts.sublist(2).join('='); // In case value contains = sign

        PostgresChangeFilterType filterType;
        switch (operator) {
          case 'eq':
            filterType = PostgresChangeFilterType.eq;
            break;
          case 'neq':
            filterType = PostgresChangeFilterType.neq;
            break;
          case 'gt':
            filterType = PostgresChangeFilterType.gt;
            break;
          case 'gte':
            filterType = PostgresChangeFilterType.gte;
            break;
          case 'lt':
            filterType = PostgresChangeFilterType.lt;
            break;
          case 'lte':
            filterType = PostgresChangeFilterType.lte;
            break;
          default:
            filterType = PostgresChangeFilterType.eq;
        }

        postgresFilter = PostgresChangeFilter(
          type: filterType,
          column: column,
          value: value,
        );
      }
    }

    // Create subscription with PostgresChangeFilter object
    final subscription = channel.onPostgresChanges(
      event: PostgresChangeEvent.all,
      schema: 'public',
      table: tableName,
      filter: postgresFilter, // Use PostgresChangeFilter object
      callback: (payload) {
        print(
            'subscribeToChanges: Realtime update received on $channelName. Event: ${payload.eventType}, Table: ${payload.table}.');
        if (reloadAction != null) {
          print('subscribeToChanges: Triggering reloadAction.');
          try {
            reloadAction();
          } catch (e) {
            print(
                'subscribeToChanges: Error executing reloadAction for channel $channelName: $e');
          }
        } else {
          print('subscribeToChanges: No reloadAction provided, skipping.');
        }
      },
    );

    subscription.subscribe((status, [error]) {
      print(
          'subscribeToChanges: Subscription status for $channelName: $status');
      if (error != null) {
        print(
            'subscribeToChanges: Subscription error for $channelName: $error');
      }
    });
  } catch (e) {
    print(
        'subscribeToChanges: Error calling channel.onPostgresChanges().subscribe(): $e');
  }
}
