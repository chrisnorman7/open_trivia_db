/// Provides enumerations for getting lists of questions.
import 'package:json_annotation/json_annotation.dart';

import 'question_factory.dart';

/// Question difficulties.
///
/// Any member of this enum can be passed to [QuestionFactory.getQuestions].
enum QuestionDifficulties {
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
enum QuestionTypes {
  /// Multiple Choice.
  @JsonValue('multiple')
  multiple,

  /// True / False.
  @JsonValue('boolean')
  boolean,
}
