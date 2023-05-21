/// Represents an error message.
class ErrorMessage {
  /// The error message.
  String message;

  /// Creates a new instance of [ErrorMessage].
  ///
  /// The [message] parameter represents the error message.
  ErrorMessage({required this.message});

  /// Creates an [ErrorMessage] instance from a JSON map.
  ///
  /// The [json] parameter is a JSON map representing the error message.
  /// The 'message' key in the [json] map is used to extract the error message value.
  factory ErrorMessage.fromJson(Map<String, dynamic> json) => ErrorMessage(
        message: json['message'] ?? '',
      );
}
