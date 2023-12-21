import 'json/enumerations.dart';

/// An HTTP error from the server.
class ResponseError implements Exception {
  /// Create an error.
  ResponseError(this.code);

  /// The code that caused this error.
  final ResponseCodes code;

  /// Return a string representation of this object.
  @override
  String toString() => code.toString();
}
