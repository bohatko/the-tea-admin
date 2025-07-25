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

Future<bool> updatePropertiesStatus(String userId) async {
  try {
    // Convert string userId to UUID format if needed
    if (userId.isEmpty) {
      print('Error: User ID is empty');
      return false;
    }

    // Step 1: Find all properties assigned to the user
    final propertiesResponse = await SupaFlow.client
        .from('properties')
        .select('id')
        .eq('asigned_user', userId);

    if (propertiesResponse.isEmpty) {
      print('No properties found for user: $userId');
      return true; // No properties to update, but not an error
    }

    // Extract property IDs
    final List<String> propertyIds = propertiesResponse
        .map<String>((property) => property['id'].toString())
        .toList();

    print('Found ${propertyIds.length} properties for user: $userId');

    // Step 2: Update property_price_status for properties with Rent or Sale status
    final updateResponse = await SupaFlow.client
        .from('property_price_status')
        .update({'status': 'Inactive'})
        .inFilter('property_id', propertyIds)
        .inFilter('status', ['Rent', 'Sale']);

    print('Successfully updated property statuses to Inactive');
    return true;
  } catch (error) {
    print('Error in updatePropertiesStatus: $error');
    return false;
  }
}
