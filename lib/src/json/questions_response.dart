import 'package:json_annotation/json_annotation.dart';

import 'enumerations.dart';
import 'question.dart';

part 'questions_response.g.dart';

/// A response holding a list of questions.
@JsonSerializable(fieldRename: FieldRename.snake)
class QuestionsResponse {
  /// Create an instance.
  const QuestionsResponse({
    required this.responseCode,
    required this.questions,
  });

  /// Create an instance from a JSON object.
  factory QuestionsResponse.fromJson(final Map<String, dynamic> json) =>
      _$QuestionsResponseFromJson(json);

  /// The response code.
  final QuestionFactoryResponseCode responseCode;

  /// A list of questions.
  @JsonKey(name: 'results')
  final List<Question> questions;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$QuestionsResponseToJson(this);
}
