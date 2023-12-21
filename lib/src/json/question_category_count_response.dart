import 'package:json_annotation/json_annotation.dart';

import 'question_category.dart';
import 'question_category_count.dart';

part 'question_category_count_response.g.dart';

/// A category question count response from the server.
@JsonSerializable()
class QuestionCategoryCountResponse {
  /// Create an instance.
  QuestionCategoryCountResponse({
    required this.categoryId,
    required this.totals,
  });

  /// Create an instance from a JSON object.
  factory QuestionCategoryCountResponse.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$QuestionCategoryCountResponseFromJson(json);

  /// The ID of the [QuestionCategory] this object represents counts for.
  @JsonKey(name: 'category_id')
  final int categoryId;

  /// The totals for this [QuestionCategory].
  @JsonKey(name: 'category_question_count')
  final QuestionCategoryCount totals;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$QuestionCategoryCountResponseToJson(this);
}
