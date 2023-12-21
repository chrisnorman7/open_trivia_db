import 'package:json_annotation/json_annotation.dart';

import '../question_factory.dart';

/// Question difficulties.
///
/// Any member of this enum can be passed to [QuestionFactory.getQuestions].
enum QuestionDifficulty {
  /// Easy questions.
  @JsonValue('easy')
  easy,

  /// Medium questions.
  @JsonValue('medium')
  medium,

  /// Hard questions.
  @JsonValue('hard')
  hard,
}

/// Types of questions.
///
/// Members of this enumeration can be used with [QuestionFactory.getQuestions].
enum QuestionType {
  /// Multiple Choice.
  @JsonValue('multiple')
  multiple,

  /// True / False.
  @JsonValue('boolean')
  boolean,
}

/// Enumerates all possible response codes from the API.
enum QuestionFactoryResponseCode {
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
