import 'package:json_annotation/json_annotation.dart';

/// Provides the [ResponseCodes] enumeration.

/// Enumerates all possible response codes from the API.
enum ResponseCodes {
  /// Success: Returned results successfully.
  @JsonValue(0)
  success,

  /// No Results: Could not return results. The API doesn't have enough
  /// questions for your query. (Ex. Asking for 50 Questions in a Category that
  /// only has 20.)
  @JsonValue(1)
  noResults,

  /// Invalid Parameter: Contains an invalid parameter. Arguments passed in
  /// aren't valid. (Ex. Amount = Five)
  @JsonValue(2)
  invalidParameter,

  /// Token Not Found: Session Token does not exist.
  @JsonValue(3)
  tokenNotFound,

  /// Token Empty Session: Token has returned all possible questions for the
  /// specified query. Resetting the Token is necessary.
  @JsonValue(4)
  tokenEmptySession
}
