import 'package:json_annotation/json_annotation.dart';

part 'question_category.g.dart';

/// A question category.
@JsonSerializable()
class QuestionCategory {
  /// Create a category.
  const QuestionCategory({
    required this.id,
    required this.name,
  });

  /// Create an instance from a JSON object.
  factory QuestionCategory.fromJson(final Map<String, dynamic> json) =>
      _$QuestionCategoryFromJson(json);

  /// The unique id of the category.
  final int id;

  /// The name of this category.
  final String name;

  /// Convert an instance to json.
  Map<String, dynamic> toJson() => _$QuestionCategoryToJson(this);
}
