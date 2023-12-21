// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_category_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionCategoryCountResponse _$QuestionCategoryCountResponseFromJson(
        Map<String, dynamic> json) =>
    QuestionCategoryCountResponse(
      categoryId: json['category_id'] as int,
      totals: QuestionCategoryCount.fromJson(
          json['category_question_count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuestionCategoryCountResponseToJson(
        QuestionCategoryCountResponse instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'category_question_count': instance.totals,
    };
