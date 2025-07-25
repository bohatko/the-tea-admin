import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime? convertStringIntoDate(String? dateString) {
  if (dateString == null || dateString.isEmpty) {
    return null;
  }

  try {
    return DateTime.parse(dateString.replaceAll(' ', 'T'));
  } catch (e) {
    return DateTime.now();
  }
}

bool checkEmptyDate(DateTime? date) {
  return date != null;
}

DateTime convertToUserTimezone(DateTime utcDateTime) {
  return utcDateTime.toLocal();
}

DateTime convertToServerTime(DateTime localDateTime) {
  return localDateTime.toUtc();
}

bool getNewMessageStatus(dynamic jsonString) {
  try {
    Map<String, dynamic> jsonData;

    if (jsonString is String) {
      jsonData = json.decode(jsonString);
    } else if (jsonString is Map<String, dynamic>) {
      jsonData = jsonString;
    } else {
      return false;
    }

    final dynamic newMessage = jsonData['new_message'];

    return newMessage is bool ? newMessage : false;
  } catch (e) {
    return false;
  }
}

bool checkDoubleValue(String? value) {
  if (value == null || value.isEmpty) {
    return true;
  }

  String normalizedValue = value.replaceAll(',', '.');

  double? parsedValue = double.tryParse(normalizedValue);
  if (parsedValue == null) {
    return false;
  }

  List<String> parts = normalizedValue.split('.');

  if (parts.length == 1) {
    String integerPart = parts[0];

    if (integerPart.startsWith('-')) {
      integerPart = integerPart.substring(1);
    }
    return integerPart.length <= 10;
  }

  if (parts.length == 2) {
    String integerPart = parts[0];
    String decimalPart = parts[1];

    if (integerPart.startsWith('-')) {
      integerPart = integerPart.substring(1);
    }

    return integerPart.length <= 10 && decimalPart.length <= 2;
  }

  return false;
}

bool checkAlphanumericValue(String? value) {
  if (value == null || value.isEmpty) {
    return true;
  }

  RegExp alphanumericRegex = RegExp(r'^[a-zA-Z0-9]+$');
  return alphanumericRegex.hasMatch(value);
}

String calculatePriceChanging(
  int? previousPrice,
  String? previousEvent,
  int currentPrice,
  String currentEvent,
) {
  if (previousEvent == null || previousPrice == null) {
    return '';
  }

  List<List<String>> allowedCombinations = [
    ["Listed as Sold", "Listed for Sale"],
    ["Listed for Sale", "Listed as Sold"],
    ["Listed as Sale Agreed", "Listed as Sold"],
    ["Listed as Sold", "Listed as Sale Agreed"],
    ["Listed for Sale", "Listed as Sale Agreed"],
    ["Listed as Sale Agreed", "Listed for Sale"],
  ];

  bool shouldCalculate = currentEvent == previousEvent ||
      allowedCombinations.any((combination) =>
          combination[0] == currentEvent && combination[1] == previousEvent);

  if (!shouldCalculate) {
    return '';
  }

  double currentPriceDouble = currentPrice.toDouble();
  double previousPriceDouble = previousPrice.toDouble();

  double percentageChange =
      ((currentPriceDouble - previousPriceDouble) / previousPriceDouble) * 100;

  String formattedPercentage = percentageChange.toStringAsFixed(1);

  if (formattedPercentage.endsWith('.0')) {
    formattedPercentage =
        formattedPercentage.substring(0, formattedPercentage.length - 2);
  }

  if (percentageChange > 0) {
    return '+$formattedPercentage%';
  } else {
    return '$formattedPercentage%';
  }
}
