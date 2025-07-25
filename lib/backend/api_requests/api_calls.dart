import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Group Code

class SupabaseGroup {
  static String getBaseUrl({
    String? apiKey,
  }) {
    apiKey ??= FFDevEnvironmentValues().supabaseKey;
    return 'https://zvysynmqjoanacvwdqal.supabase.co/rest/v1/';
  }

  static Map<String, String> headers = {
    'apikey': '[apiKey]',
    'Authorization': 'Bearer [apiKey]',
  };
  static GeaAllUsersCall geaAllUsersCall = GeaAllUsersCall();
  static GetAllPropertiesCall getAllPropertiesCall = GetAllPropertiesCall();
  static GetSupportMessagesCall getSupportMessagesCall =
      GetSupportMessagesCall();
  static GetAllAgentRequestCall getAllAgentRequestCall =
      GetAllAgentRequestCall();
}

class GeaAllUsersCall {
  Future<ApiCallResponse> call({
    int? page = 1,
    int? pageSize = 10,
    String? searchValue = '',
    String? apiKey,
  }) async {
    apiKey ??= FFDevEnvironmentValues().supabaseKey;
    final baseUrl = SupabaseGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "p_page": ${page},
  "p_page_size": ${pageSize},
  "p_search_value": "${escapeStringForJson(searchValue)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GeaAllUsers',
      apiUrl: '${baseUrl}rpc/get_admin_users',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apiKey}',
        'Authorization': 'Bearer ${apiKey}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPropertiesCall {
  Future<ApiCallResponse> call({
    int? page,
    int? pageSize,
    String? searchValue = '',
    String? apiKey,
  }) async {
    apiKey ??= FFDevEnvironmentValues().supabaseKey;
    final baseUrl = SupabaseGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "p_page": ${page},
  "p_page_size": ${pageSize},
  "p_search_value": "${escapeStringForJson(searchValue)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllProperties',
      apiUrl: '${baseUrl}rpc/get_admin_properties',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apiKey}',
        'Authorization': 'Bearer ${apiKey}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? createdat(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetSupportMessagesCall {
  Future<ApiCallResponse> call({
    int? pageNumber = 1,
    int? pageSize = 10,
    String? searchValue = '',
    String? apiKey,
  }) async {
    apiKey ??= FFDevEnvironmentValues().supabaseKey;
    final baseUrl = SupabaseGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "p_page": ${pageNumber},
  "p_page_size": ${pageSize},
  "p_search_value": "${escapeStringForJson(searchValue)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetSupportMessages',
      apiUrl: '${baseUrl}rpc/get_support_messages_paginated',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apiKey}',
        'Authorization': 'Bearer ${apiKey}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllAgentRequestCall {
  Future<ApiCallResponse> call({
    int? page = 1,
    int? pageSize = 10,
    String? status = '',
    String? serachValue = '',
    String? apiKey,
  }) async {
    apiKey ??= FFDevEnvironmentValues().supabaseKey;
    final baseUrl = SupabaseGroup.getBaseUrl(
      apiKey: apiKey,
    );

    final ffApiRequestBody = '''
{
  "p_page": ${page},
  "p_page_size": ${pageSize},
  "p_search_value": "${escapeStringForJson(serachValue)}",
  "p_status_filter": "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllAgentRequest',
      apiUrl: '${baseUrl}rpc/get_agent_requests_paginated',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apiKey}',
        'Authorization': 'Bearer ${apiKey}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Supabase Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
