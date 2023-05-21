/// Represents a request to send an SMS (Short Message Service).
class SendSmsRequest {
  /// The list of phone numbers to which the SMS will be sent.
  List<String> number;

  /// The signature or sender information for the SMS.
  String signature;

  /// The content or message body of the SMS.
  String content;

  /// Creates a new instance of [SendSmsRequest].
  ///
  /// The [number] parameter represents the list of phone numbers to which the SMS will be sent.
  /// The [signature] parameter represents the signature or sender information for the SMS.
  /// The [content] parameter represents the content or message body of the SMS.
  SendSmsRequest({
    required this.number,
    required this.signature,
    required this.content,
  });

  /// Converts the [SendSmsRequest] instance to a JSON map.
  ///
  /// Returns a JSON map representing the [SendSmsRequest] instance, with 'number', 'signature',
  /// and 'content' keys mapped to their corresponding values.
  Map<String, dynamic> toJson() => {
        'number': number,
        'signature': signature,
        'content': content,
      };
}
