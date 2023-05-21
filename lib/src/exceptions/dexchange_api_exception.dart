
/// Represents an exception specific to the Dexchange API.
class DexchangeApiException implements Exception {
  /// The error message associated with the exception.
  final String message;

  /// The status code associated with the exception.
  final int status;

  /// Creates a new instance of [DexchangeApiException].
  ///
  /// The [message] parameter represents the error message associated with the exception.
  /// The [status] parameter represents the status code associated with the exception.
  DexchangeApiException({
    required this.message,
    required this.status,
  });

  @override
  String toString() => 'DexchangeApiException: $status - $message';
}

