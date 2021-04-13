/// Provides response classes for converting from JSON.
import 'package:json_annotation/json_annotation.dart';

import '../../open_trivia_db.dart';

part 'responses.g.dart';

/// The response of creating or resetting a token.
@JsonSerializable(fieldRename: FieldRename.snake)
class TokenResponse {
  /// Create an instance.
  const TokenResponse(this.responseCode, this.responseMessage, this.token);

  /// Create an instance from a JSON map.
  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);

  /// The response code.
  final ResponseCodes responseCode;

  /// The message returned by the API.
  final String? responseMessage;

  /// The actual token to use.
  final String token;

  /// Convert an instance to json.
  Map<String, dynamic> toJson() => _$TokenResponseToJson(this);
}

/// A question category.
@JsonSerializable()
class Category {
  /// Create a category.
  const Category(this.id, this.name);

  /// Create an instance from a JSON object.
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  /// The unique id of the category.
  final int id;

  /// The name of this category.
  final String name;

  /// Convert an instance to json.
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

/// A list of categories sent by the server.
@JsonSerializable(fieldRename: FieldRename.snake)
class CategoryList {
  /// Create an instance.
  CategoryList(this.triviaCategories);

  /// Create an instance from a JSON object.
  factory CategoryList.fromJson(Map<String, dynamic> json) =>
      _$CategoryListFromJson(json);

  /// The list of supported categories.
  final List<Category> triviaCategories;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$CategoryListToJson(this);
}

/// The number of questions in a particular category.
@JsonSerializable()
class CategoryQuestionCount {
  /// Create an instance.
  CategoryQuestionCount(this.total, this.easy, this.medium, this.hard);

  /// Create an instance from a JSON object.
  factory CategoryQuestionCount.fromJson(Map<String, dynamic> json) =>
      _$CategoryQuestionCountFromJson(json);

  /// The total number of questions in the category.
  @JsonKey(name: 'total_question_count')
  final int total;

  /// The total number of easy questions in the category.
  @JsonKey(name: 'total_easy_question_count')
  final int easy;

  /// The total number of medium questions in the category.
  @JsonKey(name: 'total_medium_question_count')
  final int medium;

  /// The total number of hard questions in the category.
  @JsonKey(name: 'total_hard_question_count')
  final int hard;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$CategoryQuestionCountToJson(this);
}

/// A category question count response from the server.
@JsonSerializable()
class CategoryQuestionCountResponse {
  /// Create an instance.
  CategoryQuestionCountResponse(this.categoryId, this.totals);

  /// Create an instance from a JSON object.
  factory CategoryQuestionCountResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryQuestionCountResponseFromJson(json);

  /// The ID of the [Category] this object represents counts for.
  @JsonKey(name: 'category_id')
  final int categoryId;

  /// The totals for this [Category].
  @JsonKey(name: 'category_question_count')
  final CategoryQuestionCount totals;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$CategoryQuestionCountResponseToJson(this);
}

/// A question in the database.
@JsonSerializable()
class Question {
  /// Create an instance.
  Question(this.categoryName, this.type, this.difficulty, this.question,
      this.correctAnswer, this.incorrectAnswers);

  /// Create an instance from a JSON object.
  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  /// The name of the category this question belongs to.
  @JsonKey(name: 'category')
  final String categoryName;

  /// The type of this question.
  final QuestionTypes type;

  /// The difficulty of this question.
  final QuestionDifficulties difficulty;

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

/// A response holding a list of questions.
@JsonSerializable(fieldRename: FieldRename.snake)
class QuestionsResponse {
  /// Create an instance.
  QuestionsResponse(this.responseCode, this.questions);

  /// Create an instance from a JSON object.
  factory QuestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionsResponseFromJson(json);

  /// The response code.
  final ResponseCodes responseCode;

  /// A list of questions.
  @JsonKey(name: 'results')
  final List<Question> questions;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$QuestionsResponseToJson(this);
}
