import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _activePage = 'Dashboard';
  String get activePage => _activePage;
  set activePage(String value) {
    _activePage = value;
  }

  bool _isSubscribed = false;
  bool get isSubscribed => _isSubscribed;
  set isSubscribed(bool value) {
    _isSubscribed = value;
  }

  String _removeItem = '';
  String get removeItem => _removeItem;
  set removeItem(String value) {
    _removeItem = value;
  }
}
