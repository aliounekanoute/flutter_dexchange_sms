/// Represents the response received after sending an SMS (Short Message Service).
class SendSmsResponse {
  /// The message or status of the response.
  String message;

  /// The ID associated with the sent SMS.
  String smsID;

  /// The total number of SMS sent.
  int totalSms;

  /// The total number of characters in the SMS.
  int totalCaracteres;

  /// The list of invalid phone numbers to which the SMS could not be sent.
  List<String> invalidNumber;

  /// Creates a new instance of [SendSmsResponse].
  ///
  /// The [message] parameter represents the message or status of the response.
  /// The [smsID] parameter represents the ID associated with the sent SMS.
  /// The [totalSms] parameter represents the total number of SMS sent.
  /// The [totalCaracteres] parameter represents the total number of characters in the SMS.
  /// The [invalidNumber] parameter represents the list of invalid phone numbers to which
  /// the SMS could not be sent.
  SendSmsResponse({
    required this.message,
    required this.smsID,
    required this.totalSms,
    required this.totalCaracteres,
    required this.invalidNumber,
  });

  /// Creates a [SendSmsResponse] instance from a JSON map.
  ///
  /// The [json] parameter is a JSON map representing the response data.
  /// The 'message', 'smsID', 'total_sms', 'total_caracteres', and 'invalidNumber' keys
  /// in the [json] map are used to extract the corresponding property values for
  /// the [SendSmsResponse] instance.
  factory SendSmsResponse.fromJson(Map<String, dynamic> json) => SendSmsResponse(
        message: json['message'],
        smsID: json['smsID'],
        totalSms: json['total_sms'],
        totalCaracteres: json['total_caracteres'] ?? 0,
        invalidNumber: (json['invalidNumber'] as List<dynamic>)
            .map((x) => x['number'] as String)
            .toList(),
      );
}
