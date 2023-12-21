import 'package:json_annotation/json_annotation.dart';

part 'question_category.g.dart';

/// A question category.
@JsonSerializable()
class Category {
  /// Create a category.
  const Category({
    required this.id,
    required this.name,
  });

  /// Create an instance from a JSON object.
  factory Category.fromJson(final Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  /// The unique id of the category.
  final int id;

  /// The name of this category.
  final String name;

  /// Convert an instance to json.
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
