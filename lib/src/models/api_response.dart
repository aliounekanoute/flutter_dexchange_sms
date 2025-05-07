/// Represents the response from an API request.
class ApiResponse {
  /// The status of the API response.
  int status;

  /// The body of the API response.
  dynamic body;

  /// Creates a new instance of [ApiResponse].
  ///
  /// The [status] parameter represents the status of the API response.
  /// The [body] parameter contains the body of the API response.
  ApiResponse({
    required this.status,
    required this.body,
  });
}
