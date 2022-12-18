import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetallCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GETALL',
      apiUrl: 'http://15.164.185.93:5000/crawl?type=GetALL',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic root(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
  static dynamic result(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      );
  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.results[:].link''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.results[:].title''',
        true,
      );
}

class GetnewCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GETNEW',
      apiUrl: 'http://15.164.185.93:5000/crawl?type=GetNew',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      );
  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$..link''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$..title''',
        true,
      );
}

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
