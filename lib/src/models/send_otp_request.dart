/// Represents a request to send an OTP (One-Time Password).
class SendOTPRequest {
  /// The phone number to which the OTP will be sent.
  String number;

  /// The service or context for which the OTP is being sent.
  String service;

  /// The language code for the OTP message. Can be null.
  String? lang;

  /// Creates a new instance of [SendOTPRequest].
  ///
  /// The [number] parameter represents the phone number to which the OTP will be sent.
  /// The [service] parameter represents the service or context for which the OTP is being sent.
  /// The [lang] parameter represents the language code for the OTP message. It can be null.
  SendOTPRequest({
    required this.number,
    required this.service,
    this.lang,
  });

  /// Converts the [SendOTPRequest] instance to a JSON map.
  ///
  /// Returns a JSON map representing the [SendOTPRequest] instance, with 'number', 'service',
  /// and 'lang' keys mapped to their corresponding values. If [lang] is null, the default
  /// language code 'en' is used.
  Map<String, dynamic> toJson() => {
        'number': number,
        'service': service,
        'lang': lang ?? 'en',
      };
}
