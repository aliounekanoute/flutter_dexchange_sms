/// Represents the response received after sending an OTP (One-Time Password).
class SendOTPResponse {
  /// The message or status of the response.
  String message;

  /// The ID associated with the sent SMS.
  String smsID;

  /// The total number of SMS sent.
  int totalSms;

  /// Creates a new instance of [SendOTPResponse].
  ///
  /// The [message] parameter represents the message or status of the response.
  /// The [smsID] parameter represents the ID associated with the sent SMS.
  /// The [totalSms] parameter represents the total number of SMS sent.
  SendOTPResponse({
    required this.message,
    required this.smsID,
    required this.totalSms,
  });

  /// Creates a [SendOTPResponse] instance from a JSON map.
  ///
  /// The [json] parameter is a JSON map representing the response data.
  /// The 'message', 'smsID', and 'total_sms' keys in the [json] map are used
  /// to extract the corresponding property values for the [SendOTPResponse] instance.
  factory SendOTPResponse.fromJson(Map<String, dynamic> json) => SendOTPResponse(
        message: json['message'],
        smsID: json['smsID'],
        totalSms: json['total_sms'],
      );
}
