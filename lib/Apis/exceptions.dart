abstract class ApiException implements Exception {
  final String message;
  final List<String> errors;
  final int? code;
  ApiException(this.message, this.errors, this.code);
}

class ServerException extends ApiException {
  ServerException(String message, int? code) : super(message, const [], code);
}

class ValidationException extends ApiException {
  ValidationException(
    String message,
    List<String> errors,
    int? code,
  ) : super(message, errors, code);
}
