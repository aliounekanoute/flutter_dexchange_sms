import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter_dexchange_sms/src/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

/// Represents a service for sending SMS messages using the Dexchange SMS API.
class DexchangeSmsService {
  final String baseUrl = "api-v2.dexchange-sms.com";
  final String apiPrefix = "/api";
  final Map<String, String> apiHeaders = {
    'Content-Type': 'application/json',
    'Accept-Encoding': 'gzip, deflate, br',
    'Accept': 'application/json',
    'Accept-Language': 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7',
    'Host': 'api.dexchange-sms.com',
  };

  final List<int> successStatusCodes = [200, 201];

  String apiKey;

  /// Creates a new instance of [DexchangeSmsService] with the specified [apiKey].
  ///
  /// The [apiKey] parameter represents the API key used for authentication and authorization
  /// when making requests to the Dexchange SMS API.
  DexchangeSmsService({required this.apiKey});

  /// Constructs the URI for an API endpoint.
  ///
  /// The [endpoint] parameter represents the endpoint path.
  /// The [parameters] parameter (optional) represents any query parameters to include in the URI.
  Uri _getUri({
    required String endpoint,
    Map<String, String>? parameters,
  }) =>
      Uri.https(baseUrl, "$apiPrefix$endpoint", parameters ?? {});

  /// Sends a POST request to the Dexchange SMS API.
  ///
  /// The [request] parameter represents the payload to send in the request body.
  /// The [endpoint] parameter represents the endpoint path to send the request to.
  ///
  /// Returns a [Future] that completes with either an [ApiResponse] representing the successful response
  /// or an [ApiResponse] representing the error response.
  Future<Either<ApiResponse, ApiResponse>> post<T>(
      {required T request, required String endpoint}) async {
    Uri uri = _getUri(endpoint: endpoint);

    final headers = {
      'Authorization': 'Bearer $apiKey',
    };
    headers.addAll(apiHeaders);

    Response response =
        await http.post(uri, headers: headers, body: jsonEncode(request));

    if (successStatusCodes.contains(response.statusCode)) {
      return Right(ApiResponse(
          status: response.statusCode, body: jsonDecode(response.body)));
    } else {
      return Left(ApiResponse(
          status: response.statusCode, body: jsonDecode(response.body)));
    }
  }

  Future<Either<ApiResponse, ApiResponse>> get<T>(
      {required String endpoint, Map<String, String>? parameters}) async {
    Uri uri = _getUri(endpoint: endpoint, parameters: parameters);

    final headers = {
      'Authorization': 'Bearer $apiKey',
    };
    headers.addAll(apiHeaders);

    Response response = await http.get(uri, headers: headers);

    if (successStatusCodes.contains(response.statusCode)) {
      return Right(ApiResponse(
          status: response.statusCode, body: jsonDecode(response.body)));
    } else {
      return Left(ApiResponse(
          status: response.statusCode, body: jsonDecode(response.body)));
    }
  }
}
