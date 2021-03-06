import '../open_trivia_db.dart';

/// Provides error classes.

class ResponseError extends Error {
  /// Create an error.
  ResponseError(this.code) : super();

  /// The code that caused this error.
  final ResponseCodes code;

  /// Return a string representation of this object.
  @override
  String toString() => code.toString();
}
