
import 'package:flutter_dexchange_sms/src/exceptions/dexchange_api_exception.dart';
import 'package:flutter_dexchange_sms/src/models/error_message.dart';
import 'package:flutter_dexchange_sms/src/services/dexchange_sms_service.dart';

import 'package:flutter_dexchange_sms/src/models/models.dart';

/// A Flutter wrapper for the Dexchange SMS service.
class FlutterDexchangeSms {
  String apiKey;
  late DexchangeSmsService service;

  /// Creates a new instance of [FlutterDexchangeSms] with the specified [apiKey].
  ///
  /// The [apiKey] parameter represents the API key used for authentication and authorization
  /// when making requests to the Dexchange SMS API.
  FlutterDexchangeSms({
    required this.apiKey,
  }) {
    service = DexchangeSmsService(apiKey: apiKey);
  }

  /// Sends an SMS message using the Dexchange SMS service.
  ///
  /// The [request] parameter represents the request object containing the details of the SMS to be sent.
  ///
  /// Returns a [Future] that completes with a [SendSmsResponse] representing the response received
  /// from the Dexchange SMS service.
  ///
  /// Throws a [DexchangeApiException] if there is an error sending the SMS.
  Future<SendSmsResponse> sendSms({required SendSmsRequest request}) async {
    var response = await service.post<Map<String, dynamic>>(request: request.toJson(), endpoint: '/send/sms');

    if (response.isLeft) {
      ErrorMessage errorMessage = ErrorMessage.fromJson(response.left.body);
      throw DexchangeApiException(status: response.left.status, message: errorMessage.message);
    } else {
      return SendSmsResponse.fromJson(response.right.body);
    }
  }

  /// Sends an OTP (One-Time Password) using the Dexchange SMS service.
  ///
  /// The [request] parameter represents the request object containing the details of the OTP to be sent.
  ///
  /// Returns a [Future] that completes with a [SendOTPResponse] representing the response received
  /// from the Dexchange SMS service.
  ///
  /// Throws a [DexchangeApiException] if there is an error sending the OTP.
  Future<SendOTPResponse> sendOTP({required SendOTPRequest request}) async {
    var response = await service.post<Map<String, dynamic>>(request: request.toJson(), endpoint: '/send/otp');

    if (response.isLeft) {
      ErrorMessage errorMessage = ErrorMessage.fromJson(response.left.body);
      throw DexchangeApiException(status: response.left.status, message: errorMessage.message);
    } else {
      return SendOTPResponse.fromJson(response.right.body);
    }
  }

  /// Sends a request to verify an OTP (One-Time Password) using the Dexchange SMS service.
  ///
  /// The [request] parameter represents the request object containing the OTP to be verified.
  ///
  /// Returns a [Future] that completes with a [SendVerifyOTPResponse] representing the response received
  /// from the Dexchange SMS service.
  ///
  /// Throws a [DexchangeApiException] if there is an error verifying the OTP.
  Future<SendVerifyOTPResponse> sendVerifyOTP({required SendVerifyOTPRequest request}) async {
    var response = await service.post<Map<String, dynamic>>(request: request.toJson(), endpoint: '/verify/otp');

    if (response.isLeft) {
      ErrorMessage errorMessage = ErrorMessage.fromJson(response.left.body);
      throw DexchangeApiException(status: response.left.status, message: errorMessage.message);
    } else {
      return SendVerifyOTPResponse.fromJson(response.right.body);
    }
  }
}

