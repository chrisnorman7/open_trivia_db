import 'package:json_annotation/json_annotation.dart';

import 'question_category.dart';
import 'question_category_count.dart';

part 'question_category_count_response.g.dart';

/// A category question count response from the server.
@JsonSerializable()
class CategoryQuestionCountResponse {
  /// Create an instance.
  CategoryQuestionCountResponse({
    required this.categoryId,
    required this.totals,
  });

  /// Create an instance from a JSON object.
  factory CategoryQuestionCountResponse.fromJson(
    final Map<String, dynamic> json,
  ) =>
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
