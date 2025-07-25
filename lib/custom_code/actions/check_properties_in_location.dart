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

Future<bool> checkPropertiesInLocation(String location) async {
  try {
    final allowedStatuses = ['Sale', 'Rent', 'Sale Agreed', 'Rented'];

    final response = await SupaFlow.client
        .from('properties')
        .select('id, location, property_price_status!inner(status)')
        .eq('location', location)
        .inFilter('property_price_status.status', allowedStatuses)
        .limit(1);

    return response.isNotEmpty;
  } catch (e) {
    print('Error checking properties in location: $e');
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
