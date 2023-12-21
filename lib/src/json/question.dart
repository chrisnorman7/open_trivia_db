import 'package:json_annotation/json_annotation.dart';

import 'enumerations.dart';

part 'question.g.dart';

/// A question in the database.
@JsonSerializable()
class Question {
  /// Create an instance.
  Question({
    required this.categoryName,
    required this.question,
    required this.correctAnswer,
    required this.incorrectAnswers,
    required this.type,
    required this.difficulty,
  });

  /// Create an instance from a JSON object.
  factory Question.fromJson(final Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  /// The name of the category this question belongs to.
  @JsonKey(name: 'category')
  final String categoryName;

  /// The type of this question.
  final QuestionType type;

  /// The difficulty of this question.
  final QuestionDifficulty difficulty;

  /// The text of the question.
  final String question;

  /// The correct answer.
  @JsonKey(name: 'correct_answer')
  final String correctAnswer;

  /// The incorrect answers.
  @JsonKey(name: 'incorrect_answers')
  final List<String> incorrectAnswers;

  /// Get all the answers, correct first.
  List<String> get answers => [correctAnswer] + incorrectAnswers;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
