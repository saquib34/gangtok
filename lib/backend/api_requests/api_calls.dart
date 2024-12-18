import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreatePaymentOrderCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
    double? orderAmount,
    String? orderCurrency = '',
    String? customerId = '',
    String? customerEmail = '',
    String? customerPhone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_details": {
    "customer_id": "${escapeStringForJson(customerId)}",
    "customer_email": "${escapeStringForJson(customerEmail)}",
    "customer_phone": "${escapeStringForJson(customerPhone)}"
  },
  "order_id": "${escapeStringForJson(orderId)}",
  "order_amount": ${orderAmount},
  "order_currency": "${escapeStringForJson(orderCurrency)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createPaymentOrder',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'x-api-version': '2023-08-01',
        'x-client-id': '',
        'x-client-secret':
            '',
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

  static String? cforderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cf_order_id''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? customerdetailscustomerid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_id''',
      ));
  static String? customerdetailscustomeremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_email''',
      ));
  static String? customerdetailscustomerphone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_phone''',
      ));
  static String? entity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity''',
      ));
  static int? orderamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.order_amount''',
      ));
  static String? ordercurrency(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_currency''',
      ));
  static String? orderexpirytime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_expiry_time''',
      ));
  static String? orderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.order_id''',
      ));
  static String? orderstatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_status''',
      ));
  static String? paymentsessionid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_session_id''',
      ));
  static String? messageError(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? errorCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? errorType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class OrderPaymentCall {
  static Future<ApiCallResponse> call({
    String? paymentSessionId = '',
    String? channel = '',
    String? upiId = '',
    int? upiExpiryMinutes,
  }) async {
    final ffApiRequestBody = '''
{
  "payment_method": {
    "upi": {
      "channel": "${escapeStringForJson(channel)}",
      "upi_id": "${escapeStringForJson(upiId)}",
      "upi_expiry_minutes": ${upiExpiryMinutes}
    }
  },
  "payment_session_id": "${escapeStringForJson(paymentSessionId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OrderPayment',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders/sessions',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'x-api-version': '2023-08-01',
        'x-client-id': '',
        'x-client-secret':
            '',
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

  static String? cfpaymentid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cf_payment_id''',
      ));
  static String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
  static String? bhim(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payload.bhim''',
      ));
  static String? defaultpayment(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.default''',
      ));
  static String? gpay(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payload.gpay''',
      ));
  static String? paytm(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payload.paytm''',
      ));
  static String? phonepe(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payload.phonepe''',
      ));
  static String? webpayment(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.web''',
      ));
  static String? paymentmethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_method''',
      ));
  static int? paymentamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.payment_amount''',
      ));
  static String? messageError(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? errorCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? errorType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
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
