import 'package:json_annotation/json_annotation.dart';

import 'question_category.dart';

part 'question_category_list.g.dart';

/// A list of categories sent by the server.
@JsonSerializable(fieldRename: FieldRename.snake)
class QuestionCategoryList {
  /// Create an instance.
  QuestionCategoryList(this.triviaCategories);

  /// Create an instance from a JSON object.
  factory QuestionCategoryList.fromJson(final Map<String, dynamic> json) =>
      _$QuestionCategoryListFromJson(json);

  /// The list of supported categories.
  final List<QuestionCategory> triviaCategories;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$QuestionCategoryListToJson(this);
}
