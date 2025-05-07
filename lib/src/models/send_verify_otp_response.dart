/// Represents the response received after sending and verifying an OTP (One-Time Password).
class SendVerifyOTPResponse {
  /// The message or status of the response.
  String message;

  /// Creates a new instance of [SendVerifyOTPResponse].
  ///
  /// The [message] parameter represents the message or status of the response.
  SendVerifyOTPResponse({
    required this.message,
  });

  /// Creates a [SendVerifyOTPResponse] instance from a JSON map.
  ///
  /// The [json] parameter is a JSON map representing the response data.
  /// The 'message' key in the [json] map is used to extract the corresponding
  /// property value for the [SendVerifyOTPResponse] instance.
  factory SendVerifyOTPResponse.fromJson(Map<String, dynamic> json) =>
      SendVerifyOTPResponse(
        message: json['message'] ?? '',
      );
}
