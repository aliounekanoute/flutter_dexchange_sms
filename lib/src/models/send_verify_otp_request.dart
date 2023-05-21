/// Represents a request to send and verify an OTP (One-Time Password).
class SendVerifyOTPRequest {
  /// The phone number for which the OTP is sent.
  String number;

  /// The OTP (One-Time Password) to be verified.
  String otp;

  /// The service or context for which the OTP is being sent and verified.
  String service;

  /// Creates a new instance of [SendVerifyOTPRequest].
  ///
  /// The [number] parameter represents the phone number for which the OTP is sent.
  /// The [otp] parameter represents the OTP (One-Time Password) to be verified.
  /// The [service] parameter represents the service or context for which the OTP
  /// is being sent and verified.
  SendVerifyOTPRequest({
    required this.number,
    required this.otp,
    required this.service,
  });

  /// Converts the [SendVerifyOTPRequest] instance to a JSON map.
  ///
  /// Returns a JSON map representing the [SendVerifyOTPRequest] instance, with
  /// 'number', 'otp', and 'service' keys mapped to their corresponding values.
  Map<String, String> toJson() => {
        'number': number,
        'otp': otp,
        'service': service,
      };
}
