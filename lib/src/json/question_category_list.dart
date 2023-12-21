import 'package:json_annotation/json_annotation.dart';

import 'question_category.dart';

part 'question_category_list.g.dart';

/// A list of categories sent by the server.
@JsonSerializable(fieldRename: FieldRename.snake)
class CategoryList {
  /// Create an instance.
  CategoryList(this.triviaCategories);

  /// Create an instance from a JSON object.
  factory CategoryList.fromJson(final Map<String, dynamic> json) =>
      _$CategoryListFromJson(json);

  /// The list of supported categories.
  final List<Category> triviaCategories;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$CategoryListToJson(this);
}
