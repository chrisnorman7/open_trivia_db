import 'package:json_annotation/json_annotation.dart';

part 'question_category_count.g.dart';

/// The number of questions in a particular category.
@JsonSerializable()
class QuestionCategoryCount {
  /// Create an instance.
  const QuestionCategoryCount({
    required this.total,
    required this.easy,
    required this.medium,
    required this.hard,
  });

  /// Create an instance from a JSON object.
  factory QuestionCategoryCount.fromJson(final Map<String, dynamic> json) =>
      _$QuestionCategoryCountFromJson(json);

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
  Map<String, dynamic> toJson() => _$QuestionCategoryCountToJson(this);
}
